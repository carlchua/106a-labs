execute_process(COMMAND "/home/cc/ee106a/fl21/class/ee106a-agw/ros_workspaces/lab6/build/lab6_starter/ros_numpy/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/cc/ee106a/fl21/class/ee106a-agw/ros_workspaces/lab6/build/lab6_starter/ros_numpy/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
