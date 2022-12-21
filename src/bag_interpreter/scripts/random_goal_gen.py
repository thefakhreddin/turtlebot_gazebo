#!/usr/bin/env python


import math
from turtle import pos, pu
import rospy
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry
import random
import numpy as np
import random

robotPose = (0,0)

def genPos():
    xMin = np.array([-4.0 , -4.7,-1.6 ,-4.6,-4.7,2.5,6.23,5.3 ,0.39])*100
    yMin = np.array([3.3  ,0.13 ,0.34 ,0.34,0.12,0.0,0.26,-1.9,2.6 ])*100
    xMax = np.array([-0.29,-0.29,-0.29,-3.5,7.0 ,3.5,7.03,7.0 ,1.91])*100
    yMax = np.array([4.8  ,1.68 ,4.9  ,4.26,0.64,4.8,4.35,-0.7,4.88])*100

    assert len(xMin) == len(xMax) and len(xMax) == len(yMax) and len(yMax) == len(yMin)
    i = random.randint(0, len(xMin)-1)
    randPose = (0,0)
    while dist(randPose, robotPose) < 4:
        randPose = (
            random.randint(int(xMin[i]), int(xMax[i]))/100,
            random.randint(int(yMin[i]), int(yMax[i]))/100
            )
    return randPose

def genPos2():
    cor = np.array([[1.5,1.5],[1.6,0.35],[1.5,-1.2],[0.1,1.9],[0.4,-0.2],[-0.5,-0.5],
                    [-0.6,0.5],[-0.7,1.9],[-1.6,0.8],[-1.6,-0.6],[-0.2,0],[2,0],[-1.1,-1.9],
                    [1,2.3],[-1,0.5],[1,-0.5],[-1.5,-1.6],[0.27,-2.3],[1.7,1.7],[-2.4,-0.4]])
    return cor[random.randint(0,cor.shape[0]-1)]

def dist(p,q):
    return math.sqrt(
        (q[0]-p[0])**2 + (q[1]-p[1])**2
    )

def generator():
    pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size=10)
    rospy.init_node('goal_generator', anonymous=True)
    rate = rospy.Rate(0.2)
    while not rospy.is_shutdown():
        goal = PoseStamped()
        pose = genPos2()
        goal.pose.position.x = pose[0]
        goal.pose.position.y = pose[1]
        goal.pose.orientation.z = random.randint(-9,9)/10
        goal.pose.orientation.w = random.randint(-9,9)/10
        goal.header.frame_id = 'map'
        goal.header.stamp = rospy.Time.now()
        pub.publish(goal)
        rate.sleep()

def odom_callback(data):
    robotPose = ((data.pose.pose.position.x, data.pose.pose.position.y))

def listener():
    rospy.Subscriber("/odom", Odometry, odom_callback)

if __name__ == '__main__':
    listener()
    generator()