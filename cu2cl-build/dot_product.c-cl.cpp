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
#include <OpenCL/cl.h>
#else
#include <CL/cl.h>
#endif


int main() {

   cl_device_id device;
   cl_context context;
   cl_command_queue queue;
   cl_program program;
   cl_kernel dot_kernel;
   size_t max_local_size, global_size;
   cl_uint num_groups;
   struct timeval start, finish;
   cl_event prof_event;
   cl_ulong time_start, time_end;

   float a_vec[VEC_SIZE];
   float b_vec[VEC_SIZE];
   float dot_output, dot_check, result;
   float *output_vec;
   cl_mem a_buffer, b_buffer, output_buffer;

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

    
   cl_device_id dev;
   clGetPlatformIDs(1, &platform, NULL);
   device =  clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &dev, NULL);

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateContext*/
   context = clCreateContext(NULL, 1, &device, NULL, NULL, NULL);

/*CU2CL Unsupported -- Unsupported CUDA call: clGetDeviceInfo*/
   clGetDeviceInfo(device, CL_DEVICE_MAX_WORK_GROUP_SIZE,sizeof(max_local_size), &max_local_size, NULL);
   num_groups = (VEC_SIZE/4)/max_local_size;
   output_vec = (float*) malloc(num_groups * sizeof(float));

   FILE *program_handle;
   char *program_buffer;
   size_t program_size;
   program_handle = fopen("dot_product.cl", "r");
   fseek(program_handle, 0, SEEK_END);
   program_size = ftell(program_handle);
   rewind(program_handle);
   program_buffer = (char*)malloc(program_size + 1);
   program_buffer[program_size] = '\0';
   fread(program_buffer, sizeof(char), program_size, program_handle);
   fclose(program_handle);

   program = clCreateProgramWithSource(ctx, 1, (const char**)&program_buffer, &program_size, NULL);
   free(program_buffer);

   //;

   dot_kernel = clCreateKernel();

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
   a_buffer = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,sizeof(a_vec), a_vec, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
   b_buffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(b_vec), b_vec, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
   output_buffer = clCreateBuffer(context, CL_MEM_WRITE_ONLY,num_groups * sizeof(float), NULL, NULL);

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateCommandQueue*/
   queue = clCreateCommandQueue(context, device, 0, NULL);

   //;
   //;
   //;
   //;

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
   //;
   //;
   //;
   //;
   return 0;
}
