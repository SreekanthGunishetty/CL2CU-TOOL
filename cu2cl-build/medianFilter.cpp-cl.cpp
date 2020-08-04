#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>




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
    cv::Mat image = cv::imread("input3.png", cv::IMREAD_GRAYSCALE);

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

    //;
    //;
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateContext*/
    context = clCreateContext(NULL, 1, &device, NULL, NULL, NULL);

    programHandle = fopen("medianFilter.cl", "rb");
    fseek(programHandle, 0, SEEK_END);
    programSize = ftell(programHandle);
    rewind(programHandle);

    programBuffer = (char*)malloc(programSize + 1);
    programBuffer[programSize] = '\0';
    fread(programBuffer, sizeof(char), programSize, programHandle);
    fclose(programHandle);

    program = clCreateProgramWithSource(context, (const char**)&programBuffer, &programSize, NULL);
    free(programBuffer);

    clBuildProgram(program, 1, &device, options, NULL, NULL);

    cl_device_id device_id = device;
    cl_command_queue command_queue = clCreateCommandQueue(context, device_id, 0, &ret);

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
    cl_mem a_mem_obj = clCreateBuffer(context, CL_MEM_READ_ONLY, w * h * sizeof(uchar), NULL, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
    cl_mem c_mem_obj = clCreateBuffer(context, CL_MEM_WRITE_ONLY, w * h * sizeof(uchar), NULL, NULL);

    cudaMemcpy(a_mem_obj, img, w * h * sizeof(uchar),cudaMemcpyHostToDevice);
    cudaMemcpy(c_mem_obj, img, w * h * sizeof(uchar),cudaMemcpyHostToDevice);

    cl_kernel kernel  = clCreateKernel();

    //;
    //;
    //;
    //;

    size_t global_item_size[2];
    global_item_size[0] = w;
    global_item_size[1] = h;

    size_t local_item_size[2];
    local_item_size[0] = 1;
    local_item_size[1] = 1;

    clock_t start, end;
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
    start = clock();
    median_filter<<<global_item_size,local_item_size>>>(a_mem_obj,c_mem_obj,h,w);
    cudaDeviceSynchronize();
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
    end = clock();
    double time = ((double)end - (double)start) / CLOCKS_PER_SEC;
    printf("Time taken is: %lf\n",time);

    uchar* op = new uchar[w * h];
    cudaMemcpy(op, c_mem_obj, w * h * sizeof(uchar),cudaMemcpyDeviceToHost);

    cudaDeviceSynchronize();

    cv::Mat output = cv::Mat(h, w, CV_8UC1, op);
    cv::imwrite("fromgpu3.jpg", output);

/*CU2CL Unsupported -- Unsupported CUDA call: clFlush*/
    clFlush(command_queue);
    cudaDeviceSynchronize();
    //;
    //;
    cudaFree(a_mem_obj);
    cudaFree(c_mem_obj);
    //;
    //;

    return 0;
}
