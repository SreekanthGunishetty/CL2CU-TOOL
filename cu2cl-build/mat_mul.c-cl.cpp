#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>




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


  //
   

  //


  context = clCreateContext(properties,1,&device_id,NULL,NULL,&err);

  command_queue = clCreateCommandQueue(context,device_id,0,&err);

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
  inputA = clCreateBuffer(context,CL_MEM_READ_ONLY,inp_len,NULL,NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
  inputB = clCreateBuffer(context,CL_MEM_READ_ONLY,inp_len,NULL,NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
  output = clCreateBuffer(context,CL_MEM_WRITE_ONLY,op_len,NULL,NULL);

  cudaMemcpy(inputA, matA, inp_len,cudaMemcpyHostToDevice);
  cudaMemcpy(inputB, matB, inp_len,cudaMemcpyHostToDevice);

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
  

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateProgramWithSource*/
  program = clCreateProgramWithSource(context,1,(const char**) &program_buffer, NULL, NULL);
  free(program_buffer);

  //

  kernel = clCreateKernel();
  //;
  //;
  //;

  global_item_size[0] = 3;
  global_item_size[1] = 3;

  mat_mul<<<global_item_size,NULL>>>(inputA,inputB,output);

  cudaMemcpy(matC, output, op_len,cudaMemcpyDeviceToHost);

  printMatrix(matC,n,n);

  return 0;
}
