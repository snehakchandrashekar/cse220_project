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
include deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/depend.make

# Include the progress variables for this target.
include deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/progress.make

# Include the compile flags for this target's objects.
include deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/flags.make

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.o: deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/flags.make
deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.o: ../../deps/dynamorio/clients/drcachesim/tracer/raw2trace_launcher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.o"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -o CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.o -c /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/raw2trace_launcher.cpp

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.i"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -E /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/raw2trace_launcher.cpp > CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.i

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.s"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -S /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/raw2trace_launcher.cpp -o CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.s

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru.cpp.o: deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/flags.make
deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru.cpp.o: ../../deps/dynamorio/clients/drcachesim/tracer/instru.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru.cpp.o"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -m64 -std=c++11 -std=c++11 -std=c++11 -std=c++11 -o CMakeFiles/drraw2trace.dir/tracer/instru.cpp.o -c /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/instru.cpp

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drraw2trace.dir/tracer/instru.cpp.i"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -m64 -std=c++11 -std=c++11 -std=c++11 -std=c++11 -E /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/instru.cpp > CMakeFiles/drraw2trace.dir/tracer/instru.cpp.i

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drraw2trace.dir/tracer/instru.cpp.s"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -m64 -std=c++11 -std=c++11 -std=c++11 -std=c++11 -S /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/instru.cpp -o CMakeFiles/drraw2trace.dir/tracer/instru.cpp.s

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.o: deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/flags.make
deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.o: ../../deps/dynamorio/clients/drcachesim/tracer/instru_online.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.o"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -m64 -std=c++11 -std=c++11 -std=c++11 -std=c++11 -o CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.o -c /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/instru_online.cpp

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.i"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -m64 -std=c++11 -std=c++11 -std=c++11 -std=c++11 -E /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/instru_online.cpp > CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.i

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.s"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -m64 -fno-strict-aliasing -funsigned-char -fno-stack-protector -fvisibility=internal -std=c++11 -Wsuggest-override -O3 -g3 -Wall -Werror -Wwrite-strings -Wvla -Wno-unused-but-set-variable -Wno-stringop-truncation -Wno-format-truncation -Wno-stringop-overflow -m64 -std=c++11 -std=c++11 -std=c++11 -std=c++11 -S /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim/tracer/instru_online.cpp -o CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.s

# Object files for target drraw2trace
drraw2trace_OBJECTS = \
"CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.o" \
"CMakeFiles/drraw2trace.dir/tracer/instru.cpp.o" \
"CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.o"

# External object files for target drraw2trace
drraw2trace_EXTERNAL_OBJECTS =

deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/raw2trace_launcher.cpp.o
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru.cpp.o
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/tracer/instru_online.cpp.o
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/build.make
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/lib64/release/libdrmemtrace_raw2trace.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/lib64/libdrdecode.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/lib64/libdrfrontendlib.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/ext/lib64/release/libdrcovlib_static.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/ext/lib64/release/libdrutil_static.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/lib64/release/libdirectory_iterator.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/lib64/libdrfrontendlib.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/lib64/libdrmemfuncs.a
deps/dynamorio/clients/bin64/drraw2trace: /usr/lib/x86_64-linux-gnu/libpthread.so
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/lib64/release/libdrpt2ir.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/third_party/lib64/release/libipt-sb.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/third_party/lib64/release/libipt.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/third_party/lib64/release/libpevent.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/lib64/release/libdrir2trace.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/lib64/libdrdecode.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/lib64/libdrlibc.a
deps/dynamorio/clients/bin64/drraw2trace: /usr/lib/x86_64-linux-gnu/libz.so
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/lib64/release/libminizip.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/ext/lib64/release/libdrx_static.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/ext/lib64/release/libdrreg_static.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/ext/lib64/release/libdrmgr_static.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/ext/lib64/release/libdrcontainers.a
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/lib64/release/libdynamorio.so
deps/dynamorio/clients/bin64/drraw2trace: deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sneha/scarab/src/build/opt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../bin64/drraw2trace"
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drraw2trace.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/build: deps/dynamorio/clients/bin64/drraw2trace

.PHONY : deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/build

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/clean:
	cd /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim && $(CMAKE_COMMAND) -P CMakeFiles/drraw2trace.dir/cmake_clean.cmake
.PHONY : deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/clean

deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/depend:
	cd /home/sneha/scarab/src/build/opt && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sneha/scarab/src /home/sneha/scarab/src/deps/dynamorio/clients/drcachesim /home/sneha/scarab/src/build/opt /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim /home/sneha/scarab/src/build/opt/deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/dynamorio/clients/drcachesim/CMakeFiles/drraw2trace.dir/depend

