# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sneha/scarab/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sneha/scarab/src/build/opt

# Include any dependencies generated for this target.
include deps/dynamorio/tools/CMakeFiles/drloader.dir/depend.make

# Include the progress variables for this target.
include deps/dynamorio/tools/CMakeFiles/drloader.dir/progress.make

# Include the compile flags for this target's objects.
include deps/dynamorio/tools/CMakeFiles/drloader.dir/flags.make

deps/dynamorio/tools/CMakeFiles/drloader.dir/drloader.c.o: deps/dynamorio/tools/CMakeFiles/drloader.dir/flags.make
deps/dynamorio/tools/CMakeFiles/drloader.dir/drloader.c.o: ../../deps/dynamorio/tools/drloader.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/dynamorio/tools/CMakeFiles/drloader.dir/drloader.c.o"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/tools && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/drloader.dir/drloader.c.o   -c /home/sneha/scarab/src/deps/dynamorio/tools/drloader.c

deps/dynamorio/tools/CMakeFiles/drloader.dir/drloader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/drloader.dir/drloader.c.i"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/tools && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sneha/scarab/src/deps/dynamorio/tools/drloader.c > CMakeFiles/drloader.dir/drloader.c.i

deps/dynamorio/tools/CMakeFiles/drloader.dir/drloader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/drloader.dir/drloader.c.s"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/tools && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sneha/scarab/src/deps/dynamorio/tools/drloader.c -o CMakeFiles/drloader.dir/drloader.c.s

# Object files for target drloader
drloader_OBJECTS = \
"CMakeFiles/drloader.dir/drloader.c.o"

# External object files for target drloader
drloader_EXTERNAL_OBJECTS =

deps/dynamorio/bin64/drloader: deps/dynamorio/tools/CMakeFiles/drloader.dir/drloader.c.o
deps/dynamorio/bin64/drloader: deps/dynamorio/tools/CMakeFiles/drloader.dir/build.make
deps/dynamorio/bin64/drloader: deps/dynamorio/tools/CMakeFiles/drloader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin64/drloader"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drloader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/dynamorio/tools/CMakeFiles/drloader.dir/build: deps/dynamorio/bin64/drloader

.PHONY : deps/dynamorio/tools/CMakeFiles/drloader.dir/build

deps/dynamorio/tools/CMakeFiles/drloader.dir/clean:
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/tools && $(CMAKE_COMMAND) -P CMakeFiles/drloader.dir/cmake_clean.cmake
.PHONY : deps/dynamorio/tools/CMakeFiles/drloader.dir/clean

deps/dynamorio/tools/CMakeFiles/drloader.dir/depend:
	cd /home/sneha/scarab/src/build/opt && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sneha/scarab/src /home/sneha/scarab/src/deps/dynamorio/tools /home/sneha/scarab/src/build/opt /home/sneha/scarab/src/build/opt/deps/dynamorio/tools /home/sneha/scarab/src/build/opt/deps/dynamorio/tools/CMakeFiles/drloader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/dynamorio/tools/CMakeFiles/drloader.dir/depend

