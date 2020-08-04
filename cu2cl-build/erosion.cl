__kernel erosion(__global unsigned char* input, __global unsigned char* output, const unsigned int width, const unsigned int height)
{
	int gid_x = get_global_id(0);
	int gid_y = get_global_id(1);


	int id = (gid_y * width) + gid_x;

	if (gid_y < height && gid_x < width)
	{
		if (gid_x == 0 || gid_x == width - 1 || gid_y == 0 || gid_y == height - 1)
			output[id] = input[id];
		else
		{
			int window[3];

			int id0 = ((gid_y - 1) * width) + (gid_x);
			window[0] = input[id0];
			int id1 = ((gid_y) * width) + gid_x;
			window[1] = input[id1];
			int id2 = ((gid_y + 1) * width) + (gid_x);
			window[2] = input[id2];

			int min = window[0];
			for (a = 0; a < 3; a++)
			{
				if (window[a] < min)
					min = window[a];
			}
			output[id] = min;
		}
	}
}
