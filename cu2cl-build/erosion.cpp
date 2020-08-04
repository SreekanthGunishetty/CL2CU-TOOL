#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/types_c.h>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <CL/opencl.h>

using namespace cv;
using namespace std;


int main()
{

	Mat mat = imread("lena_sp_noise.png", CV_LOAD_IMAGE_GRAYSCALE);
	unsigned int width = mat.cols;
	unsigned int height = mat.rows;
	uchar* input = new uchar[(height * width)];
	if (mat.isContinuous())
		input = mat.data;

	uchar* output = new uchar[(width * height)];
	for (int i = 0; i < width * height; ++i)
		output[i] = input[i];

	cl_mem i_mem, o_mem;
        cl_platform_id Platform;
        cl_device_id device_id;
        cl_context context;
        cl_command_queue queue;
        cl_program program;
        cl_kernel kernel;

        size_t bytes = (width * height) * sizeof(char);

        clGetPlatformIDs(1, &Platform, NULL);
        clGetDeviceIDs(Platform, CL_DEVICE_TYPE_GPU, 1, &device_id, NULL);
        context = clCreateContext(0, 1, &device_id, NULL, NULL, NULL);
        queue = clCreateCommandQueue(context, device_id, 0, NULL);

	FILE *program_handle;
        char *program_buffer;
        size_t program_size;
        program_handle = fopen("erosion.cl", "r");
        fseek(program_handle, 0, SEEK_END);
        program_size = ftell(program_handle);
        rewind(program_handle);
        program_buffer = (char*)malloc(program_size + 1);
        program_buffer[program_size] = '\0';
        fread(program_buffer, sizeof(char), program_size, program_handle);
        fclose(program_handle);
	

        program = clCreateProgramWithSource(context, 1, (const char**)&program_buffer, NULL, NULL);
	free(program_buffer);        

	clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
        kernel = clCreateKernel(program, "erosion", NULL);
        i_mem = clCreateBuffer(context, CL_MEM_READ_ONLY, bytes, NULL, NULL);
        o_mem = clCreateBuffer(context, CL_MEM_WRITE_ONLY, bytes, NULL, NULL);
	clEnqueueWriteBuffer(queue, i_mem, CL_TRUE, 0, bytes, input, 0, NULL, NULL);
        clFinish(queue);

        clSetKernelArg(kernel, 0, sizeof(cl_mem), &i_mem);
        clSetKernelArg(kernel, 1, sizeof(cl_mem), &o_mem);
        clSetKernelArg(kernel, 2, sizeof(unsigned int), &width);
        clSetKernelArg(kernel, 3, sizeof(unsigned int), &height);

        size_t globalSize = width * height;
        clEnqueueNDRangeKernel(queue, kernel, 2, NULL, &globalSize, NULL, 0, NULL, NULL);
        clFinish(queue);

        clEnqueueReadBuffer(queue, o_mem, CL_TRUE, 0, bytes, output, 0, NULL, NULL);

        clReleaseProgram(program);
        clReleaseKernel(kernel);
        clReleaseCommandQueue(queue);
        clReleaseContext(context);

        free(i_mem);
        free(o_mem);
	


	Mat finImg = Mat(height, width, CV_8UC1, output);
	imwrite("eroded.jpg", finImg);

	delete[] input;
	delete[] output;
	return 0;
}

