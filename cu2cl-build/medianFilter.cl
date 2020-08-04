__kernel void median_filter(__global unsigned char *inp, __global unsigned char *op, const int height,const int width){
 
	int x = get_global_id(0);
	int y = get_global_id(1);
   // printf("%d is width and %d is height\n",width,height);
	int id = (x * width) + y;

	if (y < width && x < height)
	{
		if (x == 0 || y == 0 || x == height - 1 || y == width - 1)
		{
			op[id] = inp[id];
		}
        else
        {
            int window[9];

            int c = 0;
            for (int k = 0; k < 3; k++)
            {
                window[c++] = inp[(x - 1) * width + y - 1 + k];
            }
            for (int k = 0; k < 3; k++)
            {
                window[c++] = inp[(x)*width + y - 1 + k];
            }
            for (int k = 0; k < 3; k++)
            {
                window[c++] = inp[(x + 1) * width + y - 1 + k];
            }
            for (int k = 1; k < 9; k++)
            {
                int key = window[k];
                int l;
                for (l = k - 1; l >= 0 && window[l] > key; l--)
                {
                    window[l + 1] = window[l];
                }
                window[l + 1] = key;
            }
            // median
            op[id] = window[4];
        }
	}
}
