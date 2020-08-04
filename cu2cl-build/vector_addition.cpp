
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
 
    clGetPlatformIDs(1, &cpPlatform, NULL);
 
    clGetDeviceIDs(cpPlatform, CL_DEVICE_TYPE_GPU, 1, &device_id, NULL);
 
    context = clCreateContext(0, 1, &device_id, NULL, NULL, NULL);
 
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
    program = clCreateProgramWithSource(context, 1, (const char **)&kernelSource, &kernelSize, NULL);
 
    clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
 
    kernel = clCreateKernel(program, "vecAdd", NULL);
 
    d_a = clCreateBuffer(context, CL_MEM_READ_ONLY, bytes, NULL, NULL);
    d_b = clCreateBuffer(context, CL_MEM_READ_ONLY, bytes, NULL, NULL);
    d_c = clCreateBuffer(context, CL_MEM_WRITE_ONLY, bytes, NULL, NULL);
 
    clEnqueueWriteBuffer(queue, d_a, CL_TRUE, 0, bytes, h_a, 0, NULL, NULL);
    clEnqueueWriteBuffer(queue, d_b, CL_TRUE, 0, bytes, h_b, 0, NULL, NULL);
 
    clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_a);
    clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_b);
    clSetKernelArg(kernel, 2, sizeof(cl_mem), &d_c);
    clSetKernelArg(kernel, 3, sizeof(unsigned int), &n);
 
    clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &globalSize, &localSize, 0, NULL, NULL);
 
    clFinish(queue);
 
    clEnqueueReadBuffer(queue, d_c, CL_TRUE, 0, bytes, h_c, 0, NULL, NULL );
 
    double sum = 0;
    for(i=0; i<n; i++)
        printf("%lf\n",h_c[i]);
 
    clReleaseMemObject(d_a);
    clReleaseMemObject(d_b);
    clReleaseMemObject(d_c);
    clReleaseProgram(program);
    clReleaseKernel(kernel);
    clReleaseCommandQueue(queue);
    clReleaseContext(context);
 
    free(h_a);
    free(h_b);
    free(h_c);
 
    return 0;
}
