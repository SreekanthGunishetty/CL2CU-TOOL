__global__ void dot_product( float4* a_vec,  float4* b_vec,  float* output, __local float4* partial_dot) {

int gid = blockIdx.x * blockDim.x + threadIdx.x;
int lid = threadIdx.x;
int group_size = blockDim.x;

partial_dot[lid] = a_vec[gid] * b_vec[gid];
__syncthreads()

for(int i = group_size/2; i>0; i >>= 1) {
if(lid < i) {
partial_dot[lid] += partial_dot[lid + i];
}
__syncthreads()
}

if(lid == 0) {
output[blockIdx.x] = dot(partial_dot[0], (float4)(1.0f));
}
}


#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>




#define _CRT_SECURE_NO_WARNINGS
#define PROGRAM_FILE "dot_product.cl"

// 2^18
#define VEC_SIZE 262144

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <time.h>

#ifdef MAC

#else

#endif


int main() {






size_t max_local_size, global_size;

struct timeval start, finish;
cl_event prof_event;
cl_ulong time_start, time_end;

float a_vec[VEC_SIZE];
float b_vec[VEC_SIZE];
float dot_output, dot_check, result;
float *output_vec;
void* a_buffer, b_buffer, output_buffer;

srand((unsigned int)time(0));
for(i=0; i<VEC_SIZE; i++) {
a_vec[i] = (float)rand()/RAND_MAX;
}
srand((unsigned int)time(0));
for(i=0; i<VEC_SIZE; i++) {
b_vec[i] = (float)rand()/RAND_MAX;
}

dot_check = 0.0f;
gettimeofday(&start, NULL);
for(i=0; i<VEC_SIZE; i++) {
dot_check += a_vec[i] * b_vec[i];
}
gettimeofday(&finish, NULL);
printf("On the host, the dot product took %u.%06u seconds.\n",(unsigned int)(finish.tv_sec - start.tv_sec),(unsigned int)(finish.tv_usec - start.tv_usec));











num_groups = (VEC_SIZE/4)/max_local_size;
output_vec = (float*) malloc(num_groups * sizeof(float));




















/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&a_buffer ,sizeof(a_vec));
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&b_buffer , sizeof(b_vec));
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
cudaMalloc((void**)&output_buffer ,num_groups * sizeof(float));









global_size = VEC_SIZE/4;
dot_product<<<global_size,max_local_size>>>(a_buffer,b_buffer,output_buffer,NULL);

cudaMemcpy(output_vec, output_buffer, num_groups * sizeof(float),cudaMemcpyDeviceToHost);

/*CU2CL Unsupported -- Unsupported CUDA call: clGetEventProfilingInfo*/
clGetEventProfilingInfo(prof_event, CL_PROFILING_COMMAND_START,sizeof(time_start), &time_start, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clGetEventProfilingInfo*/
clGetEventProfilingInfo(prof_event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end, NULL);
printf("On the device, the dot product kernel completed in %lu ns.\n",(time_end - time_start));

dot_output = 0.0f;
for(i=0; i<num_groups; i++)
dot_output += output_vec[i];

result = fabs(dot_output - dot_check);
if(result > 10.0f)
printf("Dot product failed.\n");
else
printf("Dot product succeeded.\n");

free(output_vec);
cudaFree(a_buffer);
cudaFree(b_buffer);
cudaFree(output_buffer);




return 0;
}

