
inline unsigned char get_pix( unsigned char* image, int width, int height, int y, int x) {
if (x < 0 || x >= width)
return 0;
if (y < 0 || y >= height)
return 0;
return image[y*width + x];
}

__global__ void sobel( unsigned char* imageIn,  unsigned char* imageOut,
const int width, const int height) {

int i = blockIdx.y * blockDim.y + threadIdx.y;
int j = blockIdx.x * blockDim.x + threadIdx.x;

int li = threadIdx.y;
int lj = threadIdx.x;

const int l_width = 16;
const int l_height = 16;

 unsigned char l_pixels[18][18];


char skip_WI = 0;
if (j >= width || i >= height) {
skip_WI = 1;
}

if (skip_WI == 0) {
//UPPER AND LOWER (LOCAL) EDGE
if (li == 0) {
l_pixels[li][lj+1] = get_pix(imageIn, width, height, i-1, j);
} else if (li == l_height-1) {
l_pixels[li+2][lj+1] = get_pix(imageIn, width, height, i+1, j);
}

// LEFT AND RIGHT (LOCAL) EDGE
if (lj == 0) {
l_pixels[li+1][lj] = get_pix(imageIn, width, height, i, j-1);
} else if (lj == l_width-1) {
l_pixels[li+1][lj+2] = get_pix(imageIn, width, height, i, j+1);
}

// (LOCAL) CORNERS
if (li == 0 && lj == 0) {
// UPPER LEFT
l_pixels[li][lj] = get_pix(imageIn, width, height, i-1, j-1);
} else if (li == l_height-1 && lj == 0) {
// LOWER LEFT
l_pixels[li+2][lj] = get_pix(imageIn, width, height, i+1, j-1);
} else if (li == 0 && lj == l_width-1) {
// UPPER RIGHT
l_pixels[li][lj+2] = get_pix(imageIn, width, height, i-1, j+1);
} else if (li == l_height-1 && lj == l_width-1) {
// LOWER RIGHT
l_pixels[li+2][lj+2] = get_pix(imageIn, width, height, i+1, j+1);
}

// MAIN PIXEL
l_pixels[li+1][lj+1] = get_pix(imageIn, width, height, i, j);
}

__syncthreads()

if (skip_WI == 1)
return;

int Gx, Gy;

Gx = -1 * l_pixels[li][lj] - 2 * l_pixels[li][lj+1] - 1 * l_pixels[li][lj+2] +
1 * l_pixels[li+2][lj] + 2 * l_pixels[li+2][lj+1] +  1 * l_pixels[li+2][lj+2];

Gy = -1 * l_pixels[li][lj] - 2 * l_pixels[li+1][lj] - 1 * l_pixels[li+2][lj] +
1 * l_pixels[li][lj+2] + 2 * l_pixels[li+1][lj+2] + 1 * l_pixels[li+2][lj+2];

int tmpPix = sqrt((float)(Gx * Gx + Gy * Gy));

if (tmpPix > 255)
imageOut[i*width + j] = 255;
else
imageOut[i*width + j] = tmpPix;

}


#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "FreeImage.h-cl.h"
#define MAX_SOURCE_SIZE 10000
/*char* readKernel(const char* file) {
exit(1);
}
}*/
int main(void)
{
unsigned char *slikaInput;
unsigned char *slikaOutput;
FIBITMAP *imageBitmap = FreeImage_Load(FIF_PNG, "lena_sp_noise.png", 0);
FIBITMAP *imageBitmapGrey = FreeImage_ConvertToGreyscale(imageBitmap);
int width = FreeImage_GetWidth(imageBitmapGrey);
int height = FreeImage_GetHeight(imageBitmapGrey);
unsigned char *imageIn = (unsigned char*)malloc(height*width * sizeof(unsigned char));
unsigned char *imageOut = (unsigned char*)malloc(height*width * sizeof(unsigned char));
FreeImage_ConvertToRawBits(imageIn, imageBitmapGrey, width, 8, 0xFF, 0xFF, 0xFF, TRUE);
FreeImage_Unload(imageBitmapGrey);
FreeImage_Unload(imageBitmap);
dim3 global_item_size;
dim3 local_item_size;
local_item_size.x = 16;
local_item_size.y = 16;
global_item_size.x = width;
while (global_item_size.x % 16 != 0) {
global_item_size[0]++;
}
global_item_size.y = height;
while (global_item_size.y % 16 != 0) {
global_item_size[1]++;
}
printf("Global worksize: %ld x %ld\n", (long) global_item_size[0], (long) global_item_size[1]);
printf("Local worksize: %ld x %ld\n", (long) local_item_size[0], (long) local_item_size[1]);
size_t atom_buffer_size = height * width * sizeof(unsigned char);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
void* in_img_cl;
cudaMalloc((void**)&in_img_cl,atom_buffer_size);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
void* out_img_cl;
cudaMalloc((void**)&out_img_cl, atom_buffer_size);
cudaMemcpy(in_img_cl, imageIn, sizeof(unsigned char) * height * width,cudaMemcpyHostToDevice);
sobel<<<global_item_size,local_item_size>>>(in_img_cl,out_img_cl,width,height);
cudaDeviceSynchronize();
cudaMemcpy(imageOut, out_img_cl, atom_buffer_size,cudaMemcpyDeviceToHost);
FIBITMAP *imageOutBitmap = FreeImage_ConvertFromRawBits(imageOut, width, height, width, 8, 0xFF, 0xFF, 0xFF, TRUE);
FreeImage_Save(FIF_PNG, imageOutBitmap, "result.png", 0);
FreeImage_Unload(imageOutBitmap);
cudaDeviceSynchronize();
cudaFree(in_img_cl);
cudaFree(out_img_cl);
free(global_work_size);
free(local_work_size);
free(imageIn);
free(imageOut);
return 0;
}
