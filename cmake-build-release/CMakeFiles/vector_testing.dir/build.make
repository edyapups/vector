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
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/edgar/cpphomework/first-term/vector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/edgar/cpphomework/first-term/vector/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/vector_testing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vector_testing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vector_testing.dir/flags.make

CMakeFiles/vector_testing.dir/main.cpp.o: CMakeFiles/vector_testing.dir/flags.make
CMakeFiles/vector_testing.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edgar/cpphomework/first-term/vector/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vector_testing.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vector_testing.dir/main.cpp.o -c /home/edgar/cpphomework/first-term/vector/main.cpp

CMakeFiles/vector_testing.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vector_testing.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edgar/cpphomework/first-term/vector/main.cpp > CMakeFiles/vector_testing.dir/main.cpp.i

CMakeFiles/vector_testing.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vector_testing.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edgar/cpphomework/first-term/vector/main.cpp -o CMakeFiles/vector_testing.dir/main.cpp.s

CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.o: CMakeFiles/vector_testing.dir/flags.make
CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.o: ../gtest/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edgar/cpphomework/first-term/vector/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.o -c /home/edgar/cpphomework/first-term/vector/gtest/gtest-all.cc

CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edgar/cpphomework/first-term/vector/gtest/gtest-all.cc > CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.i

CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edgar/cpphomework/first-term/vector/gtest/gtest-all.cc -o CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.s

CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.o: CMakeFiles/vector_testing.dir/flags.make
CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.o: ../gtest/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edgar/cpphomework/first-term/vector/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.o -c /home/edgar/cpphomework/first-term/vector/gtest/gtest_main.cc

CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edgar/cpphomework/first-term/vector/gtest/gtest_main.cc > CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.i

CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edgar/cpphomework/first-term/vector/gtest/gtest_main.cc -o CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.s

# Object files for target vector_testing
vector_testing_OBJECTS = \
"CMakeFiles/vector_testing.dir/main.cpp.o" \
"CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.o" \
"CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.o"

# External object files for target vector_testing
vector_testing_EXTERNAL_OBJECTS =

vector_testing: CMakeFiles/vector_testing.dir/main.cpp.o
vector_testing: CMakeFiles/vector_testing.dir/gtest/gtest-all.cc.o
vector_testing: CMakeFiles/vector_testing.dir/gtest/gtest_main.cc.o
vector_testing: CMakeFiles/vector_testing.dir/build.make
vector_testing: CMakeFiles/vector_testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/edgar/cpphomework/first-term/vector/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable vector_testing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vector_testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vector_testing.dir/build: vector_testing

.PHONY : CMakeFiles/vector_testing.dir/build

CMakeFiles/vector_testing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vector_testing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vector_testing.dir/clean

CMakeFiles/vector_testing.dir/depend:
	cd /home/edgar/cpphomework/first-term/vector/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edgar/cpphomework/first-term/vector /home/edgar/cpphomework/first-term/vector /home/edgar/cpphomework/first-term/vector/cmake-build-release /home/edgar/cpphomework/first-term/vector/cmake-build-release /home/edgar/cpphomework/first-term/vector/cmake-build-release/CMakeFiles/vector_testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vector_testing.dir/depend
