#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>




#include <iostream>
#include <string>
//#include "lodepng.h"
#include <math.h>
#include <ctime>
#include <CL/cl.h>
#include <fstream>
#include <vector>

#define DIM 5

using namespace std;

std::vector<unsigned char> decodeOneStep(const char* filename)
{
	std::vector<unsigned char> image;
	unsigned width, height;
	lodepng::decode(image, width, height, filename);
	return image;
}

vector<double> create_convolution_matrix(double sigma){
	/*
	CREATES CONVOLUTION MATRIX FOR GAUSSIAN BLUR,
	GIVEN SIGMA AND DIMENTION OF THE DESIRED FILTER.
	*/

	int W = DIM;
	double kernel[DIM][DIM];
	vector<double> result;
	double mean = W / 2;
	double sum = 0.0;
	for (int x = 0; x < W; ++x)
		for (int y = 0; y < W; ++y) {
		kernel[x][y] =
			exp(-0.5 * (pow((x - mean) / sigma, 2.0) +
			pow((y - mean) / sigma, 2.0))) /
			(2 * 3.14159 * sigma * sigma);

		// ACCUMULATE VALUES
		sum += kernel[x][y];
		}

	// NORMALIZE
	for (int x = 0; x < W; ++x)
		for (int y = 0; y < W; ++y)
			kernel[x][y] /= sum;

	for (int x = 0; x < W; ++x) {
		for (int y = 0; y < W; ++y) {
			result.push_back(kernel[x][y]);
		}
	}
	return result;
}

void encodeOneStep(const char* filename, std::vector<unsigned char>& image, unsigned width, unsigned height)
{
	// ENCODE IMAGE
	lodepng::encode(filename, image, width, height);

}

std::vector<unsigned char> paint_pixel_white(std::vector<unsigned char> image, int x){
	/*
	HELPFUL FOR DEBUGGING
	param :image:	- image saved in vector
	param :x:		- pixel position to paint white
	Paints white pixel in the image.
	Returns modified image vector.
	*/
	std::vector<unsigned char> nimage = image;
	int ref = x * 4;

	for (int i = 0; i < 3; ++i){
		nimage[ref + i] = 255;
	}
	return nimage;
}


int main(){

	//// CAPTURE TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	clock_t begin = clock();

	// VARIABLES
	//char * filename = "input1.png";
	//char * filename_out = "output1.png";
	//int width = 678;
	//int height = 353;
	//char * filename = "input2.png";
	//char * filename_out = "output2.png";
	//int width = 3000;
	//int height = 1453;
	char * filename = "lena_sp_noise.png";
	char * filename_out = "output3.png";
	int width = 9000;
	int height = 3500;

	// GAUSSIAN VARIABLES
	double gauss_sigma = 1;
	int gauss_filter_dimension = DIM;

	// SHOW SETTINGS
	cout << "Input file: " << filename << endl;
	cout << "Dimensions: " << width << " x " << height << endl;
	cout << "Output file: " << filename_out << endl;
	cout << "Gaussian sigma: " << gauss_sigma << endl;
	cout << "Gaussian filter dimension: " << gauss_filter_dimension << endl;


	// ORIGINAL IMAGE
	std::vector<unsigned char> image = decodeOneStep(filename);

	// IMAGE AFTER PROCESSING
	std::vector<unsigned char> nimage = image;

	// CREATE CONVOLUTION MATRIX
	vector<double> matrix = create_convolution_matrix(gauss_sigma);

	// CONVOLUTION MATRIX TO NORMAL ARRAY
	float flat_matrix[DIM*DIM];
	for (int i = 0; i < matrix.size(); ++i){
		flat_matrix[i] = matrix.at(i);
	}

	// IMAGE TO NORMAL ARRAY
	unsigned char * flat_image = new unsigned char[width * height * 4];
	for (int i = 0; i < image.size(); ++i){
		flat_image[i] = image.at(i);
	}

	// BLURRED IMAGE ARRAY
	unsigned char * flat_image_blurred = new unsigned char[width * height * 4];


	//
	// O P E N   C L   B E G I N
	//

	//// CAPTURE TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	clock_t begin_pt = clock();

	// GETTING INFO
//	cl_int ret;					// ERROR CODES
	cl_platform_id platformID;	// OPENCL PLATFORM ID
	cl_uint platformsN;			// NUMBER OF PLATFORMS AVAILABLE
	cl_device_id deviceID;		// OPENCL DEVICE ID
	cl_uint devicesN;			// NUMBER OF OPENCL DEVICES AVAILABLE
	const cl_device_type kDeviceType = CL_DEVICE_TYPE_GPU; // WE NEED GPU

	//
	// Loading Kernell
	//
	ifstream cl_file("gauss.cl");
/*	if (cl_file.fail())
	{
		cout << "Error opening kernel file!" << endl;
		std::system("PAUSE");
		return 1;
	}*/
	string kernel_string(istreambuf_iterator<char>(cl_file), (istreambuf_iterator<char>()));
	const char *src = kernel_string.c_str();

	//// CAPTURE PREP TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	clock_t prep_time = clock();

	// ACQUIRING PLATFORM
	//;

	// ACQUIRING GPU DEVICE
	//;

	// CREATING CONTEXT
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateContext*/
	cl_context context = clCreateContext(NULL, 1, &deviceID, NULL, NULL, NULL);

	// CREATE COMMAND QUEUE
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateCommandQueue*/
	cl_command_queue cmdQueue = clCreateCommandQueue(context, deviceID, 0, NULL);


	// CREATING BUFFER FOR ORIGINAL IMAGE
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
	cl_mem gpuImg = clCreateBuffer(context, CL_MEM_READ_ONLY, width*height * 4, NULL, NULL);

	// CREATING BUFFER FOR CONVOLUTION MATRIX
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
	cl_mem gpuGaussian = clCreateBuffer(context, CL_MEM_READ_ONLY, DIM*DIM * 4, NULL, NULL);

	// CREATING BUFFER FOR BLURRED IMAGE
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
	cl_mem gpuNewImg = clCreateBuffer(context, CL_MEM_WRITE_ONLY, width*height * 4, NULL, NULL);

	//// CAPTURE DATA TRANSFER TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	clock_t data_transfer = clock();

	// COPY IMAGE ARRAY TO MEM BUFFER
	cudaMemcpy(gpuImg, flat_image, width*height * 4,cudaMemcpyHostToDevice);

	// COPY CONVOLUTION MATRIX TO MEM BUFFER
        cudaMemcpy(gpuGaussian, flat_matrix, DIM*DIM * 4,cudaMemcpyHostToDevice);

	//// CHECK DATA TRANSFER TIME
//	std::cout << "[NFO] Time spent transfering data : " << double(clock() - data_transfer) / CLOCKS_PER_SEC << endl;

	// CREATE PROGRAM FROM GIVEN KERNEL SOURCE 
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateProgramWithSource*/
	cl_program program = clCreateProgramWithSource(context, 1, (const char **)&src, NULL, NULL);
	//free(src);

	// BUILD PROGRAM FOR DESIGNATED DEVICE
	//;

	// CREATE KERNEL. 
	cl_kernel kernel = clCreateKernel();


	// SETTING IMAGE ARG
	//;

	// SETTING GAUSSIAN MATRIX ARG
	//;

	// SETTING IMAGE WIDTH ARG
	(//;

	// SETTING IMAGE HEIGHT ARG
	//;

	// SETTING GAUSSIAN BLUR SIZE ARG
	//;

	// SETTING BUFFER FOR BLURRED IMAGE
	//;


	//// CHECK PREP TIME
//	std::cout << "[NFO] Time spent on preparation : " << double(clock() - prep_time) / CLOCKS_PER_SEC << endl;

	// ENQUEUE THE KERNELL
	size_t global_item_size = width*height * 4; // DIMENTION OF IMAGE BUFFER
	size_t local_item_size = 64;

	//// CAPTURE TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	clock_t blurring_begin = clock();

	cl_event event;
	gaussian_blur<<<global_item_size,local_item_size>>>(gpuImg,gpuGaussian,width,height,gauss_filter_dimension,gpuNewImg);
/*CU2CL Unsupported -- Unsupported CUDA call: clWaitForEvents*/
	clWaitForEvents(1, &event);

	// READ MEM BUFFER WITH NEW IMAGE
	// MOVE DATA FROM DEVICE TO PREPARED BUFFER
        cudaMemcpy(flat_image_blurred, gpuNewImg, width*height * 4,cudaMemcpyDeviceToHost);

	//// CHECK BLURING TIME
//	std::cout << "[NFO] Time spent on blurring : " << double(clock() - blurring_begin) / CLOCKS_PER_SEC << endl;

	//// CAPTURE TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	clock_t cleanup_time = clock();

	// CLEANNING UP
/*CU2CL Unsupported -- Unsupported CUDA call: clFlush*/
	clFlush(cmdQueue);
	cudaDeviceSynchronize();
	//;
	//;
	cudaFree(gpuImg);
	cudaFree(gpuGaussian);
	cudaFree(gpuNewImg);
	//;
	//;

	//// CHECK CLEANUP TIME
//	std::cout << "[NFO] Time spent on cleanup : " << double(clock() - cleanup_time) / CLOCKS_PER_SEC << endl;

	//
	// O P E N   C L   E N D
	//

	//// CHECK FULL TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	std::cout << "[NFO] Full time spent by OpenCL part: " << double(clock() - begin_pt) / CLOCKS_PER_SEC << endl;

	//// CAPTURE TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	clock_t convertion_and_saving = clock();

	// CONVERT ARRAY TO IMAGE VECTOR
	for (int i = 0; i < width*height * 4; ++i){
		nimage[i] = flat_image_blurred[i];
	}

	// SAVE IMAGE
	encodeOneStep(filename_out, nimage, width, height);

	//// CHECK CONVERSION AND SAVING TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	std::cout << "[NFO] Time spent on conversion and saving: " << double(clock() - convertion_and_saving) / CLOCKS_PER_SEC << endl;

	//// CHECK FULL TIME
/*CU2CL Unsupported -- Unsupported CUDA call: clock*/
	std::cout << "[NFO] Total time spent: " << double(clock() - begin) / CLOCKS_PER_SEC << endl;

	system("PAUSE");
	return 0;
}
