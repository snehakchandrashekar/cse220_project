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
include deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/depend.make

# Include the progress variables for this target.
include deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/progress.make

# Include the compile flags for this target's objects.
include deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/flags.make

deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/drcpusim.cpp.o: deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/flags.make
deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/drcpusim.cpp.o: ../../deps/dynamorio/clients/drcpusim/drcpusim.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/drcpusim.cpp.o"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -fno-stack-protector -o CMakeFiles/drcpusim.dir/drcpusim.cpp.o -c /home/sneha/scarab/src/deps/dynamorio/clients/drcpusim/drcpusim.cpp

deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/drcpusim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drcpusim.dir/drcpusim.cpp.i"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -fno-stack-protector -E /home/sneha/scarab/src/deps/dynamorio/clients/drcpusim/drcpusim.cpp > CMakeFiles/drcpusim.dir/drcpusim.cpp.i

deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/drcpusim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drcpusim.dir/drcpusim.cpp.s"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -fno-stack-protector -S /home/sneha/scarab/src/deps/dynamorio/clients/drcpusim/drcpusim.cpp -o CMakeFiles/drcpusim.dir/drcpusim.cpp.s

deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/options.cpp.o: deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/flags.make
deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/options.cpp.o: ../../deps/dynamorio/clients/drcpusim/options.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/options.cpp.o"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -fno-stack-protector -o CMakeFiles/drcpusim.dir/options.cpp.o -c /home/sneha/scarab/src/deps/dynamorio/clients/drcpusim/options.cpp

deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/options.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drcpusim.dir/options.cpp.i"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -fno-stack-protector -E /home/sneha/scarab/src/deps/dynamorio/clients/drcpusim/options.cpp > CMakeFiles/drcpusim.dir/options.cpp.i

deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/options.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drcpusim.dir/options.cpp.s"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -fno-stack-protector -S /home/sneha/scarab/src/deps/dynamorio/clients/drcpusim/options.cpp -o CMakeFiles/drcpusim.dir/options.cpp.s

# Object files for target drcpusim
drcpusim_OBJECTS = \
"CMakeFiles/drcpusim.dir/drcpusim.cpp.o" \
"CMakeFiles/drcpusim.dir/options.cpp.o"

# External object files for target drcpusim
drcpusim_EXTERNAL_OBJECTS =

deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/drcpusim.cpp.o
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/options.cpp.o
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/build.make
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/ext/lib64/release/libdrutil.so
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/ext/lib64/release/libdrx.so
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/ext/lib64/release/libdrreg.so
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/ext/lib64/release/libdrmgr.so
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/ext/lib64/release/libdrcontainers.a
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/lib64/release/libdynamorio.so
deps/dynamorio/clients/lib64/release/libdrcpusim.so: deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../lib64/release/libdrcpusim.so"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drcpusim.dir/link.txt --verbose=$(VERBOSE)
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && /usr/bin/cmake -E echo "Usage: pass to drconfig or drrun: -t drcpusim"

# Rule to build all files generated by this target.
deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/build: deps/dynamorio/clients/lib64/release/libdrcpusim.so

.PHONY : deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/build

deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/clean:
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim && $(CMAKE_COMMAND) -P CMakeFiles/drcpusim.dir/cmake_clean.cmake
.PHONY : deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/clean

deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/depend:
	cd /home/sneha/scarab/src/build/opt && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sneha/scarab/src /home/sneha/scarab/src/deps/dynamorio/clients/drcpusim /home/sneha/scarab/src/build/opt /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/dynamorio/clients/drcpusim/CMakeFiles/drcpusim.dir/depend
