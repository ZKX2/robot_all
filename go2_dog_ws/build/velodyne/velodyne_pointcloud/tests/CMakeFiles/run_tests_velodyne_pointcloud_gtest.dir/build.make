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
CMAKE_SOURCE_DIR = /home/roszkx20/robot_all/go2_dog_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/roszkx20/robot_all/go2_dog_ws/build

# Utility rule file for run_tests_velodyne_pointcloud_gtest.

# Include the progress variables for this target.
include velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/progress.make

run_tests_velodyne_pointcloud_gtest: velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/build.make

.PHONY : run_tests_velodyne_pointcloud_gtest

# Rule to build all files generated by this target.
velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/build: run_tests_velodyne_pointcloud_gtest

.PHONY : velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/build

velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/clean:
	cd /home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_pointcloud/tests && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/cmake_clean.cmake
.PHONY : velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/clean

velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/depend:
	cd /home/roszkx20/robot_all/go2_dog_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/roszkx20/robot_all/go2_dog_ws/src /home/roszkx20/robot_all/go2_dog_ws/src/velodyne/velodyne_pointcloud/tests /home/roszkx20/robot_all/go2_dog_ws/build /home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_pointcloud/tests /home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : velodyne/velodyne_pointcloud/tests/CMakeFiles/run_tests_velodyne_pointcloud_gtest.dir/depend

