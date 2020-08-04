#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>




#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <CL/cl.h>

#include "FreeImage.h-cl.h"

#define MAX_SOURCE_SIZE 10000

//cl_int ret;

/*char* readKernel(const char* file) {
    FILE *fp;
    size_t source_size;
    char* source_str;

    fp = fopen(file, "r");
    if (!fp) {
        fprintf(stderr, ":-(#\n");
        exit(1);
    }

    source_str = (char*) malloc(MAX_SOURCE_SIZE);
    source_size = fread(source_str, 1, MAX_SOURCE_SIZE, fp);
    source_str[source_size] = '\0';
    fclose(fp);

    return source_str;
}*/


int main(void)
{
    unsigned char *slikaInput;
    unsigned char *slikaOutput;

    FIBITMAP *imageBitmap = FreeImage_Load(FIF_PNG, "lena_sp_noise.png", 0);
    FIBITMAP *imageBitmapGrey = FreeImage_ConvertToGreyscale(imageBitmap);

    int width = FreeImage_GetWidth(imageBitmapGrey);
    int height = FreeImage_GetHeight(imageBitmapGrey);

    unsigned char *imageIn = (unsigned char*)malloc(height*width * sizeof(unsigned char));
    unsigned char *imageOut = (unsigned char*)malloc(height*width * sizeof(unsigned char));

    FreeImage_ConvertToRawBits(imageIn, imageBitmapGrey, width, 8, 0xFF, 0xFF, 0xFF, TRUE);

    FreeImage_Unload(imageBitmapGrey);
    FreeImage_Unload(imageBitmap);


    size_t * global_item_size = (size_t*) malloc(sizeof(size_t)*2);
    size_t * local_item_size = (size_t*) malloc(sizeof(size_t)*2);
    local_item_size[0] = 16;
    local_item_size[1] = 16;

    global_item_size[0] = width;
    while (global_item_size[0] % 16 != 0) {
        global_item_size[0]++;
    }

    global_item_size[1] = height;
    while (global_item_size[1] % 16 != 0) {
        global_item_size[1]++;
    }

    printf("Global worksize: %ld x %ld\n", (long) global_item_size[0], (long) global_item_size[1]);
    printf("Local worksize: %ld x %ld\n", (long) local_item_size[0], (long) local_item_size[1]);

    //char* source_str = readKernel("sobel.cl");

    cl_platform_id    platform_id[10];
    cl_uint            n_platforms;
    //;


    cl_device_id    device_ids[10];
    cl_uint            n_devices;
    //;

    //cl_int ret;
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateContext*/
    cl_context context = clCreateContext(NULL, 1, device_ids, NULL, NULL, NULL);

/*CU2CL Unsupported -- Unsupported CUDA call: clCreateCommandQueue*/
    cl_command_queue command_queue = clCreateCommandQueue(context, device_ids[0], 0, NULL);

    size_t atom_buffer_size = height * width * sizeof(unsigned char);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
    cl_mem in_img_cl = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR,atom_buffer_size, NULL, NULL);
/*CU2CL Unsupported -- Unsupported CUDA call: clCreateBuffer*/
    cl_mem out_img_cl = clCreateBuffer(context, CL_MEM_WRITE_ONLY, atom_buffer_size, NULL, NULL);

    cudaMemcpy(in_img_cl, imageIn, sizeof(unsigned char) * height * width,cudaMemcpyHostToDevice);

    FILE *fp;
    size_t source_size;
    char* source_str;

    fp = fopen("sobel.cl", "r");
    if (!fp) {
        fprintf(stderr, ":-(#\n");
        exit(1);
    }

    source_str = (char*) malloc(MAX_SOURCE_SIZE);
    source_size = fread(source_str, 1, MAX_SOURCE_SIZE, fp);
    source_str[source_size] = '\0';
    fclose(fp);


/*CU2CL Unsupported -- Unsupported CUDA call: clCreateProgramWithSource*/
    cl_program program = clCreateProgramWithSource(context, 1, (const char**) &source_str, NULL, NULL);
    //;

//    printKernelBuildLog(program, device_ids[0]);

    cl_kernel kernel = clCreateKernel();

    //;
    //;
    //;
    //;

    sobel<<<global_item_size,local_item_size>>>(in_img_cl,out_img_cl,width,height);

    cudaDeviceSynchronize();

    cudaMemcpy(imageOut, out_img_cl, atom_buffer_size,cudaMemcpyDeviceToHost);
   
    FIBITMAP *imageOutBitmap = FreeImage_ConvertFromRawBits(imageOut, width, height, width, 8, 0xFF, 0xFF, 0xFF, TRUE);
    FreeImage_Save(FIF_PNG, imageOutBitmap, "result.png", 0);



    FreeImage_Unload(imageOutBitmap);
/*CU2CL Unsupported -- Unsupported CUDA call: clFlush*/
    clFlush(command_queue);
    cudaDeviceSynchronize();
    //;
    //;
    cudaFree(in_img_cl);
    cudaFree(out_img_cl);
    //;
    //;
    free(source_str);
    free(global_work_size);
    free(local_work_size);
    free(imageIn);
    free(imageOut);

    return 0;
}

