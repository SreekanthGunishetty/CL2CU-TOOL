
inline unsigned char get_pix(__global unsigned char* image, int width, int height, int y, int x) {
    if (x < 0 || x >= width)
        return 0;
    if (y < 0 || y >= height)
        return 0;
    return image[y*width + x];
}

__kernel void sobel(__global unsigned char* imageIn, __global unsigned char* imageOut, const int width, const int height) {

    int i = get_global_id(1);
    int j = get_global_id(0);

    int li = get_local_id(1);
    int lj = get_local_id(0);

    const int l_width = 16;
    const int l_height = 16;

    __local unsigned char l_pixels[18][18];


    char skip_WI = 0;
    if (j >= width || i >= height) {
        skip_WI = 1;
    }

    if (skip_WI == 0) {
        //UPPER AND LOWER (LOCAL) EDGE
        if (li == 0) {
            l_pixels[li][lj+1] = get_pix(imageIn, width, height, i-1, j);
        } else if (li == l_height-1) {
            l_pixels[li+2][lj+1] = get_pix(imageIn, width, height, i+1, j);
        }

        // LEFT AND RIGHT (LOCAL) EDGE
        if (lj == 0) {
            l_pixels[li+1][lj] = get_pix(imageIn, width, height, i, j-1);
        } else if (lj == l_width-1) {
            l_pixels[li+1][lj+2] = get_pix(imageIn, width, height, i, j+1);
        }

        // (LOCAL) CORNERS
        if (li == 0 && lj == 0) { 
            // UPPER LEFT
            l_pixels[li][lj] = get_pix(imageIn, width, height, i-1, j-1);
        } else if (li == l_height-1 && lj == 0) {
            // LOWER LEFT
            l_pixels[li+2][lj] = get_pix(imageIn, width, height, i+1, j-1);
        } else if (li == 0 && lj == l_width-1) {
            // UPPER RIGHT
            l_pixels[li][lj+2] = get_pix(imageIn, width, height, i-1, j+1);
        } else if (li == l_height-1 && lj == l_width-1) {
            // LOWER RIGHT
            l_pixels[li+2][lj+2] = get_pix(imageIn, width, height, i+1, j+1);
        }

        // MAIN PIXEL
        l_pixels[li+1][lj+1] = get_pix(imageIn, width, height, i, j);
    }

    barrier(CLK_LOCAL_MEM_FENCE);

    if (skip_WI == 1)
        return;

    int Gx, Gy;

    Gx = -1 * l_pixels[li][lj] - 2 * l_pixels[li][lj+1] - 1 * l_pixels[li][lj+2] + 
          1 * l_pixels[li+2][lj] + 2 * l_pixels[li+2][lj+1] +  1 * l_pixels[li+2][lj+2];

    Gy = -1 * l_pixels[li][lj] - 2 * l_pixels[li+1][lj] - 1 * l_pixels[li+2][lj] + 
          1 * l_pixels[li][lj+2] + 2 * l_pixels[li+1][lj+2] + 1 * l_pixels[li+2][lj+2];

    int tmpPix = sqrt((float)(Gx * Gx + Gy * Gy));

    if (tmpPix > 255)
        imageOut[i*width + j] = 255;
    else
        imageOut[i*width + j] = tmpPix;

}
