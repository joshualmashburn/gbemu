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
CMAKE_COMMAND = /home/joshua/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/201.7846.88/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/joshua/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/201.7846.88/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joshua/CLionProjects/gbemuJM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joshua/CLionProjects/gbemuJM/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/gbemuJM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gbemuJM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gbemuJM.dir/flags.make

CMakeFiles/gbemuJM.dir/main.cpp.o: CMakeFiles/gbemuJM.dir/flags.make
CMakeFiles/gbemuJM.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joshua/CLionProjects/gbemuJM/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gbemuJM.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gbemuJM.dir/main.cpp.o -c /home/joshua/CLionProjects/gbemuJM/main.cpp

CMakeFiles/gbemuJM.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gbemuJM.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joshua/CLionProjects/gbemuJM/main.cpp > CMakeFiles/gbemuJM.dir/main.cpp.i

CMakeFiles/gbemuJM.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gbemuJM.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joshua/CLionProjects/gbemuJM/main.cpp -o CMakeFiles/gbemuJM.dir/main.cpp.s

CMakeFiles/gbemuJM.dir/gb.cpp.o: CMakeFiles/gbemuJM.dir/flags.make
CMakeFiles/gbemuJM.dir/gb.cpp.o: ../gb.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joshua/CLionProjects/gbemuJM/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gbemuJM.dir/gb.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gbemuJM.dir/gb.cpp.o -c /home/joshua/CLionProjects/gbemuJM/gb.cpp

CMakeFiles/gbemuJM.dir/gb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gbemuJM.dir/gb.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joshua/CLionProjects/gbemuJM/gb.cpp > CMakeFiles/gbemuJM.dir/gb.cpp.i

CMakeFiles/gbemuJM.dir/gb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gbemuJM.dir/gb.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joshua/CLionProjects/gbemuJM/gb.cpp -o CMakeFiles/gbemuJM.dir/gb.cpp.s

# Object files for target gbemuJM
gbemuJM_OBJECTS = \
"CMakeFiles/gbemuJM.dir/main.cpp.o" \
"CMakeFiles/gbemuJM.dir/gb.cpp.o"

# External object files for target gbemuJM
gbemuJM_EXTERNAL_OBJECTS =

gbemuJM: CMakeFiles/gbemuJM.dir/main.cpp.o
gbemuJM: CMakeFiles/gbemuJM.dir/gb.cpp.o
gbemuJM: CMakeFiles/gbemuJM.dir/build.make
gbemuJM: CMakeFiles/gbemuJM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joshua/CLionProjects/gbemuJM/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable gbemuJM"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gbemuJM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gbemuJM.dir/build: gbemuJM

.PHONY : CMakeFiles/gbemuJM.dir/build

CMakeFiles/gbemuJM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gbemuJM.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gbemuJM.dir/clean

CMakeFiles/gbemuJM.dir/depend:
	cd /home/joshua/CLionProjects/gbemuJM/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joshua/CLionProjects/gbemuJM /home/joshua/CLionProjects/gbemuJM /home/joshua/CLionProjects/gbemuJM/cmake-build-debug /home/joshua/CLionProjects/gbemuJM/cmake-build-debug /home/joshua/CLionProjects/gbemuJM/cmake-build-debug/CMakeFiles/gbemuJM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gbemuJM.dir/depend

