__global__ void mat_mul( int *A,  int *B,  int *C)
{
int n = 3, m = 3, l = 3;
int idx = blockIdx.x * blockDim.x + threadIdx.x;
int idy = blockIdx.y * blockDim.y + threadIdx.y;
if (idx < 3 && idy < 3) {
int i, sum = 0;
for (i = 0 ; i < n ; ++i) {
sum += A[idy*n+i] * B[idx+i*n];
}
C[idx+idy*n] = sum;
}
}


#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>




#include <stdio.h>

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








void* inputA, inputB, output;
dim3 local_item_size[2], global_item_size[2];
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






/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&inputA ,inp_len);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&inputB ,inp_len);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&output ,op_len);

cudaMemcpy(inputA, matA, inp_len,cudaMemcpyHostToDevice);
cudaMemcpy(inputB, matB, inp_len,cudaMemcpyHostToDevice);


















//






global_item_size.x = 3;
global_item_size.y = 3;

mat_mul<<<global_item_size,NULL>>>(inputA,inputB,output);

cudaMemcpy(matC, output, op_len,cudaMemcpyDeviceToHost);

printMatrix(matC,n,n);

return 0;
}

