#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp> 
#include <iostream> 
#include <string> 
#include <stdio.h> 
#include <cuda.h> 
#include "cuda_runtime.h" 
#define BLOCK_SIZE 16 
#define FILTER_WIDTH 3 
#define FILTER_HEIGHT 3

using namespace std; 
extern "C" void medianFilter_GPU_wrapper(const cv::Mat& input, cv::Mat& output);
int main( int argc, char** argv ) 
{
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
}
__device__ void sort(unsigned char* filterVector) 
{
	 for (int i = 0; i < FILTER_WIDTH*FILTER_HEIGHT; i++)
	 {
	    for (int j = i + 1; j < FILTER_WIDTH*FILTER_HEIGHT; j++)
	    {
			if (filterVector[i] > filterVector[j])
			{
					  //Swap the variables
				  unsigned char tmp = filterVector[i];
				  filterVector[i] = filterVector[j];
				  filterVector[j] = tmp;
			}
            }
         }
}
__global__ void medianFilter(unsigned char *srcImage, unsigned char *dstImage, unsigned int width, unsigned int height, int channel) {
   int x = blockIdx.x*blockDim.x + threadIdx.x;
   int y = blockIdx.y*blockDim.y + threadIdx.y;
  
   if((x>=FILTER_WIDTH/2) && (x<(width-FILTER_WIDTH/2)) && (y>=FILTER_HEIGHT/2) && (y<(height-FILTER_HEIGHT/2)))
   {
      for(int c=0 ; c<channel ; c++)
      {
         unsigned char filterVector[FILTER_WIDTH*FILTER_HEIGHT];
         // Loop inside the filter to average pixel values
         for(int ky=-FILTER_HEIGHT/2; ky<=FILTER_HEIGHT/2; ky++)
		 {
            for(int kx=-FILTER_WIDTH/2; kx<=FILTER_WIDTH/2; kx++)
			{
               filterVector[ky*FILTER_WIDTH+kx] = srcImage[((y+ky)*width + (x+kx))*channel+c];
            }
         }
          
         sort(filterVector);
         dstImage[(y*width+x)*channel+c] = filterVector[(FILTER_WIDTH*FILTER_HEIGHT)/2];
      }
   }
}
extern "C" void medianFilter_GPU_wrapper(const cv::Mat& input, cv::Mat& output) 
{
        cudaEvent_t start, stop;
        cudaEventCreate(&start);
        cudaEventCreate(&stop);
        int channel = input.step/input.cols;
        const int inputSize = input.cols * input.rows * channel;
        const int outputSize = output.cols * output.rows * channel;
        unsigned char *d_input, *d_output;
        
        cudaMalloc<unsigned char>(&d_input,inputSize);
        cudaMalloc<unsigned char>(&d_output,outputSize);
        cudaMemcpy(d_input,input.ptr(),inputSize,cudaMemcpyHostToDevice);
        const dim3 block(BLOCK_SIZE,BLOCK_SIZE);
        const dim3 grid((output.cols + block.x - 1)/block.x, (output.rows + block.y - 1)/block.y);
        cudaEventRecord(start);
        medianFilter<<<grid,block>>>(d_input, d_output, output.cols, output.rows, channel);
        cudaEventRecord(stop);
        cudaMemcpy(output.ptr(),d_output,outputSize,cudaMemcpyDeviceToHost);
        cudaFree(d_input);
        cudaFree(d_output);
        cudaEventSynchronize(stop);
        float milliseconds = 0;
          
        cudaEventElapsedTime(&milliseconds, start, stop);
        cout<< "\nProcessing time on GPU (ms): " << milliseconds << "\n";
}
