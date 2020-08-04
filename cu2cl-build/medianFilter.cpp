#include <stdio.h>
#include <stdlib.h>
#include <algorithm>
#include <iostream>
#include <CL/cl.h>
#include <time.h>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core/types_c.h>

using namespace std;
#define MAX_SOURCE_SIZE (0x100000)


// insertion sort is done, doesnt matter a lot which sort as it is just 9 elements, could also use the default sort in cpp
void Sort(int* window)
{
    for (int i = 1; i < 9; i++)
    {
        int key = window[i];
        int j;
        for (j = i - 1; j >= 0 && window[j] > key; j--)
        {
            window[j + 1] = window[j];
        }
        window[j + 1] = key;
    }
}


int main(void) {
    cv::Mat image = cv::imread("lena_sp_noise.png", cv::IMREAD_GRAYSCALE);

    if (image.empty())
    {
        cout << "File not present, check the input name.." << endl;
        cin.get();
        exit(1);
    }

    int w = image.cols;
    int h = image.rows;

    uchar* img = new uchar[w * h];
    img = image.data;

    cl_platform_id platform; cl_device_id device; cl_context context;
    cl_program program; cl_int error; cl_build_status status;

    FILE* programHandle;
    char* programBuffer;
    size_t programSize; 

    clGetPlatformIDs(1, &platform, NULL);
    clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, NULL);
    context = clCreateContext(NULL, 1, &device, NULL, NULL, NULL);

    programHandle = fopen("medianFilter.cl", "rb");
    fseek(programHandle, 0, SEEK_END);
    programSize = ftell(programHandle);
    rewind(programHandle);

    programBuffer = (char*)malloc(programSize + 1);
    programBuffer[programSize] = '\0';
    fread(programBuffer, sizeof(char), programSize, programHandle);
    fclose(programHandle);

    program = clCreateProgramWithSource(context,1, (const char**)&programBuffer, NULL, NULL);
    free(programBuffer);

    clBuildProgram(program, 1, &device, NULL, NULL, NULL);

    cl_device_id device_id = device;
    cl_command_queue command_queue = clCreateCommandQueue(context, device_id, 0, NULL);
	
    cl_mem a_mem_obj = clCreateBuffer(context, CL_MEM_READ_ONLY, w * h * sizeof(uchar), NULL, NULL);
    cl_mem c_mem_obj = clCreateBuffer(context, CL_MEM_WRITE_ONLY, w * h * sizeof(uchar), NULL, NULL);

    clEnqueueWriteBuffer(command_queue, a_mem_obj, CL_TRUE, 0, w * h * sizeof(uchar), img, 0, NULL, NULL);
    clEnqueueWriteBuffer(command_queue, c_mem_obj, CL_TRUE, 0, w * h * sizeof(uchar), img, 0, NULL, NULL);

    cl_kernel kernel  = clCreateKernel(program, "median_filter", NULL);

    clSetKernelArg(kernel, 0, sizeof(cl_mem), (void*)&a_mem_obj);
    clSetKernelArg(kernel, 1, sizeof(cl_mem), (void*)&c_mem_obj);
    clSetKernelArg(kernel, 2, sizeof(int), (void*)&h);
    clSetKernelArg(kernel, 3, sizeof(int), (void*)&w);

    size_t global_item_size[2];
    global_item_size[0] = w;
    global_item_size[1] = h;

    size_t local_item_size[2];
    local_item_size[0] = 1;
    local_item_size[1] = 1;

    clock_t start, end;
    start = clock();
    clEnqueueNDRangeKernel(command_queue, kernel, 2, NULL, global_item_size, local_item_size, 0, NULL, NULL);
    clFinish(command_queue);
    end = clock();
    double time = ((double)end - (double)start) / CLOCKS_PER_SEC;
    printf("Time taken is: %lf\n",time);

    uchar* op = new uchar[w * h];
    clEnqueueReadBuffer(command_queue, c_mem_obj, CL_TRUE, 0,  w * h * sizeof(uchar), op, 0, NULL, NULL);

    clFinish(command_queue);

    cv::Mat output = cv::Mat(h, w, CV_8UC1, op);
    cv::imwrite("lena_sp_noise_fin.jpg", output);

    clFlush(command_queue);
    clFinish(command_queue);
    clReleaseKernel(kernel);
    clReleaseProgram(program);
    clReleaseMemObject(a_mem_obj);
    clReleaseMemObject(c_mem_obj);
    clReleaseCommandQueue(command_queue);
    clReleaseContext(context);

    return 0;
}
