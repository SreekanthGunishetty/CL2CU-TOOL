__global__ void vecAdd(   double *a,  double *b,  double *c, const unsigned int n)
{
int id = blockIdx.x * blockDim.x + threadIdx.x;
if (id < n)
c[id] = a[id] + b[id];
}


#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main( int argc, char* argv[] )
{
unsigned int n = 100;
double *h_a;
double *h_b;
double *h_c;
void* d_a;
void* d_b;
void* d_c;
size_t bytes = n*sizeof(double);
h_a = (double*)malloc(bytes);
h_b = (double*)malloc(bytes);
h_c = (double*)malloc(bytes);
int i;
for( i = 0; i < n; i++ )
{
h_a[i] = i;
h_b[i] = n-i;
}
size_t globalSize, localSize;
localSize = 64;
globalSize = ceil(n/(float)localSize)*localSize;
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&d_a , bytes);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&d_b , bytes);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&d_c , bytes);
cudaMemcpy(d_a, h_a, bytes,cudaMemcpyHostToDevice);
cudaMemcpy(d_b, h_b, bytes,cudaMemcpyHostToDevice);
vecAdd<<<globalSize,localSize>>>(d_a,d_b,d_c,n);
cudaDeviceSynchronize();
cudaMemcpy(h_c, d_c, bytes,cudaMemcpyDeviceToHost);
double sum = 0;
for(i=0; i<n; i++)
printf("%lf\n",h_c[i]);
cudaFree(d_a);
cudaFree(d_b);
cudaFree(d_c);
free(h_a);
free(h_b);
free(h_c);
return 0;
}
