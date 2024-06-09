#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped
import math

def move_in_circle():
    rospy.init_node('move_in_circle', anonymous=True)
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    path_pub = rospy.Publisher('/path', Path, queue_size=10)
    rate = rospy.Rate(10) # 10hz

    circle_radius = 1.0 # Set the radius of the circle
    angular_speed = 0.1 # Set the angular speed
    linear_speed = angular_speed * circle_radius # Calculate linear speed
    
    twist_msg = Twist()
    twist_msg.linear.x = linear_speed
    twist_msg.angular.z = angular_speed

    path_msg = Path()
    pose_stamped = PoseStamped()
    pose_stamped.pose.position.x = circle_radius
    pose_stamped.pose.position.y = 0.0
    pose_stamped.pose.orientation.w = 1.0
    path_msg.poses.append(pose_stamped)

    while not rospy.is_shutdown():
        pub.publish(twist_msg)
        path_pub.publish(path_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        move_in_circle()
    except rospy.ROSInterruptException:
        pass

