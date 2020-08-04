#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>




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

        //;
        //;
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateContext*/
        context = clCreateContext(0, 1, &device_id, NULL, NULL, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateCommandQueue*/
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
	

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateProgramWithSource*/
        program = clCreateProgramWithSource(context, 1, (const char**)&program_buffer, NULL, NULL);
	free(program_buffer);        

	//;
        kernel = clCreateKernel();
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
        i_mem = clCreateBuffer(context, CL_MEM_READ_ONLY, bytes, NULL, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
        o_mem = clCreateBuffer(context, CL_MEM_WRITE_ONLY, bytes, NULL, NULL);
	cudaMemcpy(i_mem, input, bytes,cudaMemcpyHostToDevice);
        cudaDeviceSynchronize();

        //;
        //;
        //;
        //;

        size_t globalSize = width * height;
        erosion<<<&globalSize,NULL>>>(i_mem,o_mem,width,height);
        cudaDeviceSynchronize();

        cudaMemcpy(output, o_mem, bytes,cudaMemcpyDeviceToHost);

        //;
        //;
        //;
        //;

        free(i_mem);
        free(o_mem);
	


	Mat finImg = Mat(height, width, CV_8UC1, output);
	imwrite("eroded.jpg", finImg);

	delete[] input;
	delete[] output;
	return 0;
}

