# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anonix/new_tool/CL2CU/CU2CL/llvm-build

# Include any dependencies generated for this target.
include lib/Option/CMakeFiles/LLVMOption.dir/depend.make

# Include the progress variables for this target.
include lib/Option/CMakeFiles/LLVMOption.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Option/CMakeFiles/LLVMOption.dir/flags.make

lib/Option/CMakeFiles/LLVMOption.dir/Arg.cpp.o: lib/Option/CMakeFiles/LLVMOption.dir/flags.make
lib/Option/CMakeFiles/LLVMOption.dir/Arg.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/Arg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Option/CMakeFiles/LLVMOption.dir/Arg.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMOption.dir/Arg.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/Arg.cpp

lib/Option/CMakeFiles/LLVMOption.dir/Arg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMOption.dir/Arg.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/Arg.cpp > CMakeFiles/LLVMOption.dir/Arg.cpp.i

lib/Option/CMakeFiles/LLVMOption.dir/Arg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMOption.dir/Arg.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/Arg.cpp -o CMakeFiles/LLVMOption.dir/Arg.cpp.s

lib/Option/CMakeFiles/LLVMOption.dir/ArgList.cpp.o: lib/Option/CMakeFiles/LLVMOption.dir/flags.make
lib/Option/CMakeFiles/LLVMOption.dir/ArgList.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/ArgList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/Option/CMakeFiles/LLVMOption.dir/ArgList.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMOption.dir/ArgList.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/ArgList.cpp

lib/Option/CMakeFiles/LLVMOption.dir/ArgList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMOption.dir/ArgList.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/ArgList.cpp > CMakeFiles/LLVMOption.dir/ArgList.cpp.i

lib/Option/CMakeFiles/LLVMOption.dir/ArgList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMOption.dir/ArgList.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/ArgList.cpp -o CMakeFiles/LLVMOption.dir/ArgList.cpp.s

lib/Option/CMakeFiles/LLVMOption.dir/Option.cpp.o: lib/Option/CMakeFiles/LLVMOption.dir/flags.make
lib/Option/CMakeFiles/LLVMOption.dir/Option.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/Option.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/Option/CMakeFiles/LLVMOption.dir/Option.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMOption.dir/Option.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/Option.cpp

lib/Option/CMakeFiles/LLVMOption.dir/Option.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMOption.dir/Option.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/Option.cpp > CMakeFiles/LLVMOption.dir/Option.cpp.i

lib/Option/CMakeFiles/LLVMOption.dir/Option.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMOption.dir/Option.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/Option.cpp -o CMakeFiles/LLVMOption.dir/Option.cpp.s

lib/Option/CMakeFiles/LLVMOption.dir/OptTable.cpp.o: lib/Option/CMakeFiles/LLVMOption.dir/flags.make
lib/Option/CMakeFiles/LLVMOption.dir/OptTable.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/OptTable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/Option/CMakeFiles/LLVMOption.dir/OptTable.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMOption.dir/OptTable.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/OptTable.cpp

lib/Option/CMakeFiles/LLVMOption.dir/OptTable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMOption.dir/OptTable.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/OptTable.cpp > CMakeFiles/LLVMOption.dir/OptTable.cpp.i

lib/Option/CMakeFiles/LLVMOption.dir/OptTable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMOption.dir/OptTable.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option/OptTable.cpp -o CMakeFiles/LLVMOption.dir/OptTable.cpp.s

# Object files for target LLVMOption
LLVMOption_OBJECTS = \
"CMakeFiles/LLVMOption.dir/Arg.cpp.o" \
"CMakeFiles/LLVMOption.dir/ArgList.cpp.o" \
"CMakeFiles/LLVMOption.dir/Option.cpp.o" \
"CMakeFiles/LLVMOption.dir/OptTable.cpp.o"

# External object files for target LLVMOption
LLVMOption_EXTERNAL_OBJECTS =

lib/libLLVMOption.a: lib/Option/CMakeFiles/LLVMOption.dir/Arg.cpp.o
lib/libLLVMOption.a: lib/Option/CMakeFiles/LLVMOption.dir/ArgList.cpp.o
lib/libLLVMOption.a: lib/Option/CMakeFiles/LLVMOption.dir/Option.cpp.o
lib/libLLVMOption.a: lib/Option/CMakeFiles/LLVMOption.dir/OptTable.cpp.o
lib/libLLVMOption.a: lib/Option/CMakeFiles/LLVMOption.dir/build.make
lib/libLLVMOption.a: lib/Option/CMakeFiles/LLVMOption.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../libLLVMOption.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && $(CMAKE_COMMAND) -P CMakeFiles/LLVMOption.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMOption.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Option/CMakeFiles/LLVMOption.dir/build: lib/libLLVMOption.a

.PHONY : lib/Option/CMakeFiles/LLVMOption.dir/build

lib/Option/CMakeFiles/LLVMOption.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option && $(CMAKE_COMMAND) -P CMakeFiles/LLVMOption.dir/cmake_clean.cmake
.PHONY : lib/Option/CMakeFiles/LLVMOption.dir/clean

lib/Option/CMakeFiles/LLVMOption.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Option /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Option/CMakeFiles/LLVMOption.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Option/CMakeFiles/LLVMOption.dir/depend

