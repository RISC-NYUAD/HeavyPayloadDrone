# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/rn1/projects/vulcan_uav/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rn1/projects/vulcan_uav/build

# Utility rule file for vulcan_mavros_generate_messages_cpp.

# Include the progress variables for this target.
include vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/progress.make

vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp: /home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/Num.h
vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp: /home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/AddTwoInts.h


/home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/Num.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/Num.h: /home/rn1/projects/vulcan_uav/src/vulcan_mavros/msg/Num.msg
/home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/Num.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rn1/projects/vulcan_uav/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from vulcan_mavros/Num.msg"
	cd /home/rn1/projects/vulcan_uav/src/vulcan_mavros && /home/rn1/projects/vulcan_uav/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/rn1/projects/vulcan_uav/src/vulcan_mavros/msg/Num.msg -Ivulcan_mavros:/home/rn1/projects/vulcan_uav/src/vulcan_mavros/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p vulcan_mavros -o /home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/AddTwoInts.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/AddTwoInts.h: /home/rn1/projects/vulcan_uav/src/vulcan_mavros/srv/AddTwoInts.srv
/home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/AddTwoInts.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/AddTwoInts.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rn1/projects/vulcan_uav/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from vulcan_mavros/AddTwoInts.srv"
	cd /home/rn1/projects/vulcan_uav/src/vulcan_mavros && /home/rn1/projects/vulcan_uav/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/rn1/projects/vulcan_uav/src/vulcan_mavros/srv/AddTwoInts.srv -Ivulcan_mavros:/home/rn1/projects/vulcan_uav/src/vulcan_mavros/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p vulcan_mavros -o /home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros -e /opt/ros/kinetic/share/gencpp/cmake/..

vulcan_mavros_generate_messages_cpp: vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp
vulcan_mavros_generate_messages_cpp: /home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/Num.h
vulcan_mavros_generate_messages_cpp: /home/rn1/projects/vulcan_uav/devel/include/vulcan_mavros/AddTwoInts.h
vulcan_mavros_generate_messages_cpp: vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/build.make

.PHONY : vulcan_mavros_generate_messages_cpp

# Rule to build all files generated by this target.
vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/build: vulcan_mavros_generate_messages_cpp

.PHONY : vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/build

vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/clean:
	cd /home/rn1/projects/vulcan_uav/build/vulcan_mavros && $(CMAKE_COMMAND) -P CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/clean

vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/depend:
	cd /home/rn1/projects/vulcan_uav/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rn1/projects/vulcan_uav/src /home/rn1/projects/vulcan_uav/src/vulcan_mavros /home/rn1/projects/vulcan_uav/build /home/rn1/projects/vulcan_uav/build/vulcan_mavros /home/rn1/projects/vulcan_uav/build/vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vulcan_mavros/CMakeFiles/vulcan_mavros_generate_messages_cpp.dir/depend

