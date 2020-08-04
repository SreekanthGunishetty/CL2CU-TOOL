#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>





#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <CL/opencl.h>


int main( int argc, char* argv[] )
{
unsigned int n = 100;

double *h_a;
double *h_b;
double *h_c;

cl_mem d_a;
cl_mem d_b;
cl_mem d_c;

cl_platform_id cpPlatform;        // OpenCL platform
cl_device_id device_id;           // device ID
cl_context context;               // context
cl_command_queue queue;           // command queue
cl_program program;               // program
cl_kernel kernel;                 // kernel

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
//    cl_int err;

localSize = 64;

globalSize = ceil(n/(float)localSize)*localSize;

//;

//;

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateContext*/
context = clCreateContext(0, 1, &device_id, NULL, NULL, NULL);

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateCommandQueue*/
queue = clCreateCommandQueue(context, device_id, 0, NULL);
char* kernelSource;
FILE* kernelFile;
size_t kernelSize;
kernelFile = fopen("vecAdd.cl","rb");
fseek(kernelFile, 0, SEEK_END);
kernelSize = ftell(kernelFile);
rewind(kernelFile);
kernelSource = (char*)malloc(kernelSize +1);
kernelSource[kernelSize] = '\0';
fread(kernelSource, sizeof(char), kernelSize, kernelFile);
fclose(kernelFile);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateProgramWithSource*/
program = clCreateProgramWithSource(context, 1, (const char **)&kernelSource, &kernelSize, NULL);

//;

kernel = clCreateKernel();

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
d_a = clCreateBuffer(context, CL_MEM_READ_ONLY, bytes, NULL, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
d_b = clCreateBuffer(context, CL_MEM_READ_ONLY, bytes, NULL, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
d_c = clCreateBuffer(context, CL_MEM_WRITE_ONLY, bytes, NULL, NULL);

cudaMemcpy(d_a, h_a, bytes,cudaMemcpyHostToDevice);
cudaMemcpy(d_b, h_b, bytes,cudaMemcpyHostToDevice);

//;
//;
//;
//;

vecAdd<<<globalSize,localSize>>>(d_a,d_b,d_c,n);

cudaDeviceSynchronize();

cudaMemcpy(h_c, d_c, bytes,cudaMemcpyDeviceToHost);

double sum = 0;
for(i=0; i<n; i++)
printf("%lf\n",h_c[i]);

cudaFree(d_a);
cudaFree(d_b);
cudaFree(d_c);
//;
//;
//;
//;

free(h_a);
free(h_b);
free(h_c);

return 0;
}


