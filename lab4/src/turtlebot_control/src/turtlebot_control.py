#!/usr/bin/env python
#The line above tells Linux that this file is a Python script,
#and that the OS should use the Python interpreter in /usr/bin/env
#to run it. Don't forget to use "chmod +x [filename]" to make
#this script executable.

#Import the rospy package. For an import to work, it must be specified
#in both the package manifest AND the Python file in which it is used.
import rospy
import tf2_ros
import sys

from geometry_msgs.msg import Twist

#Define the method which contains the main functionality of the node.
def controller(turtlebot_frame, goal_frame):
  """
  Controls a turtlebot whose position is denoted by turtlebot_frame,
  to go to a position denoted by target_frame
  Inputs:
  - turtlebot_frame: the tf frame of the AR tag on your turtlebot
  - target_frame: the tf frame of the target AR tag
  """

  ################################### YOUR CODE HERE ##############

  #Create a publisher and a tf buffer, which is primed with a tf listener
  topic = '/cmd_vel_mux/input/teleop' # Added here pond
  pub = rospy.Publisher(topic, Twist, queue_size=10)
  tfBuffer = tf2_ros.Buffer()
  tfListener = tf2_ros.TransformListener(tfBuffer)
  
  # Create a timer object that will sleep long enough to result in
  # a 10Hz publishing rate
  r = rospy.Rate(10) # 10hz

  K1 = 0.3
  K2 = 1
  
  # Loop until the node is killed with Ctrl-C
  while not rospy.is_shutdown():
    try:
      trans = tfBuffer.lookup_transform(turtlebot_frame, goal_frame, rospy.Time())

      # Process trans to get your state error
      # Generate a control command to send to the robot

      # turtle_bot_data = turtlebot_frame.transforms.transform
      # goal_data = goal_frame.transforms.transform

      # tb_x = turtle_bot_data.translation.x
      # tb_y = turtle_bot_data.translation.y
      # tb_z = turtle_bot_data.translation.z

      # goal_x = goal_data.translation.x
      # goal_y = goal.data.translation.y
      # goal_z = goal.data.translation.z

      error_x = trans[0]
      error_y = trans[1]

      control_command = Twist()
      linear_command = Vector3d()
      angular_command = Vector3d()

      linear_command.x = K1 * (error_x)
      angular_command.x = K2 * (error_y)

      print('lin', linear_command.x)
      print('ang', angular_command.x)

      control_command.linear = linear_command
      control_command.angular = angular_command

      #################################### end your code ###############

      pub.publish(control_command)
    except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
      pass
    # Use our rate object to sleep until it is time to publish again
    r.sleep()

      
# This is Python's sytax for a main() method, which is run by default
# when exectued in the shell
if __name__ == '__main__':
  # Check if the node has received a signal to shut down
  # If not, run the talker method

  #Run this program as a new node in the ROS computation graph 
  #called /turtlebot_controller.
  rospy.init_node('turtlebot_controller', anonymous=True)

  try:
    controller(sys.argv[1], sys.argv[2])
  except rospy.ROSInterruptException:
    pass