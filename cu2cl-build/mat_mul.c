#include <stdio.h>
#include <CL/cl.h>
#include <stdlib.h>
#include <fcntl.h>

#define BUF_SIZE 2048
#define ERROR -1

#define END 0

char *KernelSource = "";

void printMatrix(int *arr, int n, int m) {
  int i, j;
  for (i = 0 ; i < n ; ++i ) {
    for (j = 0 ; j < m ; ++j ) {
        printf("%d ", arr[i*n+j]);
    }
    printf("\n" );
  }
  printf("\n" );
}

int main(int argc, char const *argv[]) {
  cl_platform_id platform_id;
  cl_uint num_of_platforms;
  cl_device_id device_id;
  cl_uint num_of_devices;
  cl_context context;
  cl_kernel kernel;
  cl_command_queue command_queue;
  cl_program program;
  cl_mem inputA, inputB, output;
  size_t local_item_size[2], global_item_size[2];
  int len;
  int res;
  int n = 3;
  int inp_len = sizeof(int)*n*n, op_len = sizeof(int)*n*n;
  int matA[] = {1,2,5,4,2,5,5,2,6}, matB[] = {5,2,7,3,6,2,6,2,6};
  int matC[9];

  printMatrix(matA,n,n);
  printMatrix(matB,n,n);


  clGetPlatformIDs(1,&platform_id,&num_of_platforms)
   

  clGetDeviceIDs(platform_id,CL_DEVICE_TYPE_ALL,1,&device_id,&num_of_devices)


  context = clCreateContext(properties,1,&device_id,NULL,NULL,&err);

  command_queue = clCreateCommandQueue(context,device_id,0,&err);

  inputA = clCreateBuffer(context,CL_MEM_READ_ONLY,inp_len,NULL,NULL);
  inputB = clCreateBuffer(context,CL_MEM_READ_ONLY,inp_len,NULL,NULL);
  output = clCreateBuffer(context,CL_MEM_WRITE_ONLY,op_len,NULL,NULL);

  clEnqueueWriteBuffer(command_queue,inputA,CL_TRUE,0,inp_len,matA,0,NULL,NULL);
  clEnqueueWriteBuffer(command_queue,inputB,CL_TRUE,0,inp_len,matB,0,NULL,NULL);

  FILE *program_handle;
  char *program_buffer;
  size_t program_size;
  program_handle = fopen("mat_mul.cl", "r");
  fseek(program_handle, 0, SEEK_END);
  program_size = ftell(program_handle);
  rewind(program_handle);
  program_buffer = (char*)malloc(program_size + 1);
  program_buffer[program_size] = '\0';
  fread(program_buffer, sizeof(char), program_size, program_handle);
  fclose(program_handle);
  

  program = clCreateProgramWithSource(context,1,(const char**) &program_buffer, NULL, NULL);
  free(program_buffer);

  clBuildProgram(program,1,&device_id,NULL,NULL,NULL)

  kernel = clCreateKernel(program,"mat_mul",NULL);
  clSetKernelArg(kernel,0,sizeof(cl_mem),&inputA);
  clSetKernelArg(kernel,1,sizeof(cl_mem),&inputB);
  clSetKernelArg(kernel,2,sizeof(cl_mem),&output);

  global_item_size[0] = 3;
  global_item_size[1] = 3;

  clEnqueueNDRangeKernel(command_queue,kernel,2,NULL,global_item_size,NULL,0,NULL,NULL);

  clEnqueueReadBuffer(command_queue,output,CL_TRUE,0,op_len,matC,0,NULL,NULL);

  printMatrix(matC,n,n);

  return 0;
}
