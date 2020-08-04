




#include "FreeImage.h-cl.cl"

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




