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

# Utility rule file for ClangDiagnosticDriver.

# Include the progress variables for this target.
include tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/progress.make

tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver: tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc


tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc: tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/clang/Basic && /usr/local/bin/cmake -E copy_if_different /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc

tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: bin/clang-tblgen
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/Attr.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/CommentNodes.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DeclNodes.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/Diagnostic.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticASTKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticAnalysisKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticCategories.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticCommentKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticCommonKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticDriverKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticFrontendKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticGroups.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticLexKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticParseKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticSemaKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/DiagnosticSerializationKinds.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/StmtNodes.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/arm_neon.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/CodeGen/ValueTypes.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/Intrinsics.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsAArch64.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsARM.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsHexagon.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsMips.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsNVVM.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsPowerPC.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsR600.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsX86.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/IR/IntrinsicsXCore.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/Option/OptParser.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/Target/Target.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/Target/TargetCallingConv.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/Target/TargetItinerary.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/Target/TargetSchedule.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include/llvm/Target/TargetSelectionDAG.td
tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/Diagnostic.td
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building DiagnosticDriverKinds.inc..."
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/clang/Basic && ../../../../../bin/clang-tblgen -gen-clang-diags-defs -clang-component=Driver -I /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic -I /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target -I /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/include /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic/Diagnostic.td -o /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp

ClangDiagnosticDriver: tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver
ClangDiagnosticDriver: tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc
ClangDiagnosticDriver: tools/clang/include/clang/Basic/DiagnosticDriverKinds.inc.tmp
ClangDiagnosticDriver: tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/build.make

.PHONY : ClangDiagnosticDriver

# Rule to build all files generated by this target.
tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/build: ClangDiagnosticDriver

.PHONY : tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/build

tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/clang/Basic && $(CMAKE_COMMAND) -P CMakeFiles/ClangDiagnosticDriver.dir/cmake_clean.cmake
.PHONY : tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/clean

tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang/Basic /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/clang/Basic /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/include/clang/Basic/CMakeFiles/ClangDiagnosticDriver.dir/depend

