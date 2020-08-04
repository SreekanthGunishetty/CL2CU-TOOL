import sys
file1 = open(sys.argv[1],"r")
file2 = open(sys.argv[2], "r")
after_convert = sys.argv[1] + "-cu.cu"
up_file1_content = ""
new_file1_content = "" 
new_file2_content = ""
flag=0
file_handler = []
for line in file1:
	line = line.strip()
	if("clGetPlatformIDs" in line or "clGetDeviceIDs" in line or "clGetDeviceInfo" in line or  flag==1 or "CL/" in line or "cl_platform_id" in line or "cl_device_id" in line or "cl_kernel" in line or "cl_context" in line or "cl_program" in line or "cl_command_queue" in line or "clCreateContext" in line or "clCreateCommandQueue" in line or "clCreateProgramWithSource" in line or "clCreateKernel" in line or "cl_build_status" in line or "clFlush" in line or "clBuildProgram" in line or "cl_uint" in line or "CL_CONTEXT_PLATFORM" in line):
		nline = line.replace(line,"")
	elif("cl_mem" in line and ("clCreateBuffer" in line and "/*" not in line)):
		data = line.split("=")
		d_var = data[0].split(" ")
 	        d_a = d_var[1]
                size = data[1].split(",")[2]
		line1 = "void* " + d_a + ";"
                line2 = "cudaMalloc((void**)&" + d_a + "," + size + ");"
		nline = line1 +"\n"+line2
	elif("cl_mem" in line):
		nline = line.replace("cl_mem", "void*")
	elif("clCreateBuffer" in line and "/*" not in line):
		d_var = line.split("=")
		d_a = d_var[0]
		size = d_var[1].split(",")[2]
		nline = line.replace(line, "cudaMalloc((void**)&" + d_a + "," + size + ");")
	elif("cl_int" in line):
		nline = line.replace(line, "")
	elif("global_item_size" in line and "size_t" in line and "[" in line):
		if("local_item_size" in line):
			nline = line.replace("size_t", "dim3")
		else:
			nline = line.replace(line, "dim3 global_item_size;")
	elif("global_item_size" in line  and "=" in line and "[" in line):
		if("[0]" in line):
			nline = line.replace("[0]", ".x")
		elif("[1]" in line):
			nline = line.replace("[1]", ".y")
		elif("[2]" in line):
			nline = line.replace("[2]", ".z")
        elif("local_item_size" in line and "size_t" in line and "[" in line):
                nline = line.replace(line, "dim3 local_item_size;")
        elif("local_item_size" in line  and "=" in line and "[" in line):
                if("[0]" in line):
                        nline = line.replace("[0]", ".x")
                elif("[1]" in line):
                        nline = line.replace("[1]", ".y")
                elif("[2]" in line):
                        nline = line.replace("[2]", ".z")
	elif("global_item_size" in line and "size_t" in line and "=" in line):
		if("local_item_size" in line):
			nline = line
		nline = line
	elif("local_item_size" in line and "size_t" in line and "=" in line):
                nline = line
		
	else:
		nline = line
	

	if("fopen" in line and sys.argv[2] in line):
		flag = 1
	if(flag == 1):
		if("=" in line):
			equ = line.split("=")
			var = equ[0].split(" ")
			file_handler.append(var[len(var) - 2])
		for i in file_handler:
	                if(i in line):
        	                nline = ""
		if("fclose" in line and file_handler[0] in line):
			flag = 0
			nline = ""
	if("//;"==line):
			nline= ""
	up_file1_content += nline + "\n"

for line in up_file1_content.split("\n"):
	nline = line.strip()
        for i in file_handler:
                if(i in line):
                        nline = ""
	#if(nline!=""):
	new_file1_content += nline + "\n"

for line in file2:
	line = line.strip()
	if("__global" in line):
                nline = line.replace("__global", "")
                nline = nline.replace("__kernel", "__global__")
        elif("__local" in line):
                nline = line.replace("__local", "")
                nline = nline.replace("__kernel", "__local__")
	elif("get_global_id" in line):
                if("(0)" in line):
                        nline = line.replace("get_global_id(0)", "blockIdx.x * blockDim.x + threadIdx.x")
                elif("(1)" in line):
                        nline = line.replace("get_global_id(1)", "blockIdx.y * blockDim.y + threadIdx.y")
                elif("(2)" in line):
                        nline = line.replace("get_global_id(2)", "blockIdx.z * blockDim.z + threadIdx.z")
	elif("get_local_id" in line):
                if("(0)" in line):
                        nline = line.replace("get_local_id(0)", "threadIdx.x")
                elif("(1)" in line):
                        nline = line.replace("get_local_id(1)", "threadIdx.y")
                elif("(2)" in line):
                        nline = line.replace("get_local_id(2)", "threadIdx.z")

	elif("get_local_size" in line):
                if("(0)" in line):
                        nline = line.replace("get_local_size(0)", "blockDim.x")
                elif("(1)" in line):
                        nline = line.replace("get_local_size(1)", "blockDim.y")
                elif("(2)" in line):
                        nline = line.replace("get_local_size(2)", "blockDim.z")
	elif("get_group_id" in line):
                if("(0)" in line):
                        nline = line.replace("get_group_id(0)", "blockIdx.x")
                elif("(1)" in line):
                        nline = line.replace("get_group_id(1)", "blockIdx.y")
                elif("(2)" in line):
                        nline = line.replace("get_group_id(2)", "blockIdx.z")

	elif("barrier" in line):
		nline = line.replace(line,"__syncthreads()")
        else:
                nline = line
	new_file2_content += nline + "\n"
	


new_file_content = new_file2_content +"\n\n"+ new_file1_content

file1.close()
file2.close()

file3 = open(after_convert,"w")
file3.write(new_file_content)

file3.close()
