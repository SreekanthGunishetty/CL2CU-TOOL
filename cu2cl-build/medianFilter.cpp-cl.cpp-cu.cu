__global__ void median_filter( unsigned char *inp,  unsigned char *op, const int height,const int width){

int x = blockIdx.x * blockDim.x + threadIdx.x;
int y = blockIdx.y * blockDim.y + threadIdx.y;
// printf("%d is width and %d is height\n",width,height);
int id = (x * width) + y;

if (y < width && x < height)
{
if (x == 0 || y == 0 || x == height - 1 || y == width - 1)
{
op[id] = inp[id];
}
else
{
int window[9];

int c = 0;
for (int k = 0; k < 3; k++)
{
window[c++] = inp[(x - 1) * width + y - 1 + k];
}
for (int k = 0; k < 3; k++)
{
window[c++] = inp[(x)*width + y - 1 + k];
}
for (int k = 0; k < 3; k++)
{
window[c++] = inp[(x + 1) * width + y - 1 + k];
}
for (int k = 1; k < 9; k++)
{
int key = window[k];
int l;
for (l = k - 1; l >= 0 && window[l] > key; l--)
{
window[l + 1] = window[l];
}
window[l + 1] = key;
}
// median
op[id] = window[4];
}
}
}


#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <algorithm>
#include <iostream>
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
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
void* a_mem_obj;
cudaMalloc((void**)&a_mem_obj, w * h * sizeof(uchar));
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
void* c_mem_obj;
cudaMalloc((void**)&c_mem_obj, w * h * sizeof(uchar));
cudaMemcpy(a_mem_obj, img, w * h * sizeof(uchar),cudaMemcpyHostToDevice);
cudaMemcpy(c_mem_obj, img, w * h * sizeof(uchar),cudaMemcpyHostToDevice);
dim3 global_item_size;
global_item_size.x = w;
global_item_size.y = h;
dim3 local_item_size;
local_item_size.x = 1;
local_item_size.y = 1;
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
cudaDeviceSynchronize();
cudaFree(a_mem_obj);
cudaFree(c_mem_obj);
return 0;
}
