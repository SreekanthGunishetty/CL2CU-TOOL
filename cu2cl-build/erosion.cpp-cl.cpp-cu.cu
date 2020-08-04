__global__ erosion( unsigned char* input,  unsigned char* output, const unsigned int width, const unsigned int height)
{
int gid_x = blockIdx.x * blockDim.x + threadIdx.x;
int gid_y = blockIdx.y * blockDim.y + threadIdx.y;


int id = (gid_y * width) + gid_x;

if (gid_y < height && gid_x < width)
{
if (gid_x == 0 || gid_x == width - 1 || gid_y == 0 || gid_y == height - 1)
output[id] = input[id];
else
{
int window[3];

int id0 = ((gid_y - 1) * width) + (gid_x);
window[0] = input[id0];
int id1 = ((gid_y) * width) + gid_x;
window[1] = input[id1];
int id2 = ((gid_y + 1) * width) + (gid_x);
window[2] = input[id2];

int min = window[0];
for (a = 0; a < 3; a++)
{
if (window[a] < min)
min = window[a];
}
output[id] = min;
}
}
}


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

void* i_mem, o_mem;







size_t bytes = (width * height) * sizeof(char);



























/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&i_mem , bytes);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&o_mem , bytes);
cudaMemcpy(i_mem, input, bytes,cudaMemcpyHostToDevice);
cudaDeviceSynchronize();






size_t globalSize = width * height;
erosion<<<&globalSize,NULL>>>(i_mem,o_mem,width,height);
cudaDeviceSynchronize();

cudaMemcpy(output, o_mem, bytes,cudaMemcpyDeviceToHost);






free(i_mem);
free(o_mem);



Mat finImg = Mat(height, width, CV_8UC1, output);
imwrite("eroded.png", finImg);

delete[] input;
delete[] output;
return 0;
}


