#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/opencl.h>
#endif
#include <stdlib.h>
#include <stdio.h>
#include "cu2cl_util.h"




cl_kernel __cu2cl_Kernel_medianFilter;
cl_program __cu2cl_Program_medianFilter2_cu;
extern const char *progSrc;
extern size_t progLen;

extern cl_platform_id __cu2cl_Platform;
extern cl_device_id __cu2cl_Device;
extern cl_context __cu2cl_Context;
extern cl_command_queue __cu2cl_CommandQueue;

extern size_t globalWorkSize[3];
extern size_t localWorkSize[3];
void __cu2cl_Cleanup_medianFilter2_cu() {
    clReleaseKernel(__cu2cl_Kernel_medianFilter);
    clReleaseProgram(__cu2cl_Program_medianFilter2_cu);
}
void __cu2cl_Init_medianFilter2_cu() {
    #ifdef WITH_ALTERA
    progLen = __cu2cl_LoadProgramSource("medianFilter2_cu_cl.aocx", &progSrc);
    __cu2cl_Program_medianFilter2_cu = clCreateProgramWithBinary(__cu2cl_Context, 1, &__cu2cl_Device, &progLen, (const unsigned char **)&progSrc, NULL, NULL);
    #else
    progLen = __cu2cl_LoadProgramSource("medianFilter2.cu-cl.cl", &progSrc);
    __cu2cl_Program_medianFilter2_cu = clCreateProgramWithSource(__cu2cl_Context, 1, &progSrc, &progLen, NULL);
    #endif
    free((void *) progSrc);
    clBuildProgram(__cu2cl_Program_medianFilter2_cu, 1, &__cu2cl_Device, "-I . ", NULL, NULL);
    __cu2cl_Kernel_medianFilter = clCreateKernel(__cu2cl_Program_medianFilter2_cu, "medianFilter", NULL);
}

cl_int err;
const char *getErrorString(cl_int error){
switch(error){
// run-time and JIT compiler errors
	case 0: return "CL_SUCCESS";
	case -1: return "CL_DEVICE_NOT_FOUND";
	case -2: return "CL_DEVICE_NOT_AVAILABLE";
	case -3: return "CL_COMPILER_NOT_AVAILABLE";
	case -4: return "CL_MEM_OBJECT_ALLOCATION_FAILURE";
	case -5: return "CL_OUT_OF_RESOURCES";
	case -6: return "CL_OUT_OF_HOST_MEMORY";
	case -7: return "CL_PROFILING_INFO_NOT_AVAILABLE";
	case -8: return "CL_MEM_COPY_OVERLAP";
	case -9: return "CL_IMAGE_FORMAT_MISMATCH";
	case -10: return "CL_IMAGE_FORMAT_NOT_SUPPORTED";
	case -11: return "CL_BUILD_PROGRAM_FAILURE";
	case -12: return "CL_MAP_FAILURE";
	case -13: return "CL_MISALIGNED_SUB_BUFFER_OFFSET";
	case -14: return "CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST";
	case -15: return "CL_COMPILE_PROGRAM_FAILURE";
	case -16: return "CL_LINKER_NOT_AVAILABLE";
	case -17: return "CL_LINK_PROGRAM_FAILURE";
	case -18: return "CL_DEVICE_PARTITION_FAILED";
	case -19: return "CL_KERNEL_ARG_INFO_NOT_AVAILABLE";
	// compile-time errors
	case -30: return "CL_INVALID_VALUE";
	case -31: return "CL_INVALID_DEVICE_TYPE";
	case -32: return "CL_INVALID_PLATFORM";
	case -33: return "CL_INVALID_DEVICE";
	case -34: return "CL_INVALID_CONTEXT";
	case -35: return "CL_INVALID_QUEUE_PROPERTIES";
	case -36: return "CL_INVALID_COMMAND_QUEUE";
	case -37: return "CL_INVALID_HOST_PTR";
	case -38: return "CL_INVALID_MEM_OBJECT";
	case -39: return "CL_INVALID_IMAGE_FORMAT_DESCRIPTOR";
	case -40: return "CL_INVALID_IMAGE_SIZE";
	case -41: return "CL_INVALID_SAMPLER";
	case -42: return "CL_INVALID_BINARY";
	case -43: return "CL_INVALID_BUILD_OPTIONS";
	case -44: return "CL_INVALID_PROGRAM";
	case -45: return "CL_INVALID_PROGRAM_EXECUTABLE";
	case -46: return "CL_INVALID_KERNEL_NAME";
	case -47: return "CL_INVALID_KERNEL_DEFINITION";
	case -48: return "CL_INVALID_KERNEL";
	case -49: return "CL_INVALID_ARG_INDEX";
	case -50: return "CL_INVALID_ARG_VALUE";
	case -51: return "CL_INVALID_ARG_SIZE";
	case -52: return "CL_INVALID_KERNEL_ARGS";
	case -53: return "CL_INVALID_WORK_DIMENSION";
	case -54: return "CL_INVALID_WORK_GROUP_SIZE";
	case -55: return "CL_INVALID_WORK_ITEM_SIZE";
	case -56: return "CL_INVALID_GLOBAL_OFFSET";
	case -57: return "CL_INVALID_EVENT_WAIT_LIST";
	case -58: return "CL_INVALID_EVENT";
	case -59: return "CL_INVALID_OPERATION";
	case -60: return "CL_INVALID_GL_OBJECT";
	case -61: return "CL_INVALID_BUFFER_SIZE";
	case -62: return "CL_INVALID_MIP_LEVEL";
	case -63: return "CL_INVALID_GLOBAL_WORK_SIZE";
	case -64: return "CL_INVALID_PROPERTY";
	case -65: return "CL_INVALID_IMAGE_DESCRIPTOR";
	case -66: return "CL_INVALID_COMPILER_OPTIONS";
	case -67: return "CL_INVALID_LINKER_OPTIONS";
	case -68: return "CL_INVALID_DEVICE_PARTITION_COUNT";
	// extension errors
	case -1000: return "CL_INVALID_GL_SHAREGROUP_REFERENCE_KHR";
	case -1001: return "CL_PLATFORM_NOT_FOUND_KHR";
	case -1002: return "CL_INVALID_D3D10_DEVICE_KHR";
	case -1003: return "CL_INVALID_D3D10_RESOURCE_KHR";
	case -1004: return "CL_D3D10_RESOURCE_ALREADY_ACQUIRED_KHR";
	case -1005: return "CL_D3D10_RESOURCE_NOT_ACQUIRED_KHR";
	default: return "Unknown OpenCL error";
}
}

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp> 
#include <iostream> 
#include <string> 
#include <stdio.h> 
 
 
#define BLOCK_SIZE 16 
#define FILTER_WIDTH 3 
#define FILTER_HEIGHT 3

using namespace std; 
extern "C" void medianFilter_GPU_wrapper(const cv::Mat& input, cv::Mat& output);
int main( int argc, char** argv ) 
{
__cu2cl_Init();

   string image_name = "lena_sp_noise";
   string input_file = image_name+".png";
   //string output_file_cpu = image_name+"_cpu.png";
   string output_file_gpu = image_name+"_gpu.png";
   cv::Mat srcImage = cv::imread(input_file ,CV_LOAD_IMAGE_UNCHANGED);
   if(srcImage.empty())
   {
      std::cout<<"Image Not Found: "<< input_file << std::endl;
      return -1;
   }
   cout <<"\ninput image size: "<<srcImage.cols<<" "<<srcImage.rows<<" "<<srcImage.channels()<<"\n";
    
     
   cv::Mat dstImage (srcImage.size(), srcImage.type());
    
   medianFilter_GPU_wrapper(srcImage, dstImage);
   
   imwrite(output_file_gpu, dstImage);
   
   //medianFilter_CPU(srcImage, dstImage);
   
   //imwrite(output_file_cpu, dstImage);
       
   return 0;
__cu2cl_Cleanup();
}


extern "C" void medianFilter_GPU_wrapper(const cv::Mat& input, cv::Mat& output) 
{
        cl_event start, stop;
        cudaEventCreate(&start);
        cudaEventCreate(&stop);
        int channel = input.step/input.cols;
        const int inputSize = input.cols * input.rows * channel;
        const int outputSize = output.cols * output.rows * channel;
        unsigned char *d_input, *d_output;
        
        cudaMalloc<unsigned char>(&d_input,inputSize);
        cudaMalloc<unsigned char>(&d_output,outputSize);
        cudaMemcpy(d_input,input.ptr(),inputSize,cudaMemcpyHostToDevice);
        const size_t block[3] = {BLOCK_SIZE, BLOCK_SIZE, 1};
        const size_t grid[3] = {(output.cols + block[0] - 1)/block[0], (output.rows + block[1] - 1)/block[1], 1};
        cudaEventRecord(start);
/*CU2CL Note -- Fast-tracked dim3 type without cast*/
        clSetKernelArg(__cu2cl_Kernel_medianFilter, 0, sizeof(unsigned char *), &d_input);
clSetKernelArg(__cu2cl_Kernel_medianFilter, 1, sizeof(unsigned char *), &d_output);
clSetKernelArg(__cu2cl_Kernel_medianFilter, 2, sizeof(unsigned int), &output.cols);
clSetKernelArg(__cu2cl_Kernel_medianFilter, 3, sizeof(unsigned int), &output.rows);
clSetKernelArg(__cu2cl_Kernel_medianFilter, 4, sizeof(int), &channel);
localWorkSize[0] = block;
globalWorkSize[0] = (grid)*localWorkSize[0];
clEnqueueNDRangeKernel(__cu2cl_CommandQueue, __cu2cl_Kernel_medianFilter, 1, NULL, globalWorkSize, localWorkSize, 0, NULL, NULL);
        cudaEventRecord(stop);
        cudaMemcpy(output.ptr(),d_output,outputSize,cudaMemcpyDeviceToHost);
        cudaFree(d_input);
        cudaFree(d_output);
        cudaEventSynchronize(stop);
        float milliseconds = 0;
          
        cudaEventElapsedTime(&milliseconds, start, stop);
        cout<< "\nProcessing time on GPU (ms): " << milliseconds << "\n";
}
