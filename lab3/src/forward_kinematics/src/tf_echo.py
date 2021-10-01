#!/usr/bin/env python

import tf2_ros
import rospy
import sys

def main(target_frame, source_frame):
	rospy.init_node("listener_node")
	tfBuffer = tf2_ros.Buffer()
	tfListener = tf2_ros.TransformListener(tfBuffer)

	while not rospy.is_shutdown():
		try:
			trans = tfBuffer.lookup_transform(target_frame, source_frame, rospy.Time())
			print(trans)
		except tf2_ros.LookupException:
			continue
		except tf2_ros.ConnectivityException:
			continue
		except tf2_ros.ExtrapolationException:
			continue


if __name__ == '__main__':
	target = sys.argv[1]
	source = sys.argv[2]
	main(target, source)
