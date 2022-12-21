#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Path, Odometry, OccupancyGrid
import csv
import numpy as np
from skimage.transform import downscale_local_mean

version = 8

cmdVel = [0, 0, 0]
heading = [0, 0]
currentPose = [0,0]
costMap = np.zeros((400,))


def cmd_vel_callback(data):
    global cmdVel
    cmdVel = [
        data.linear.x, data.angular.z
    ]


def odom_callback(data):
    global heading
    global currentPose
    heading = [
        data.pose.pose.orientation.z, data.pose.pose.orientation.w
    ]
    currentPose = [
        data.pose.pose.position.x, data.pose.pose.position.y
    ]


def costmap_callback(data):
    highRes = np.array(data.data)
    highRes = np.reshape(highRes,(60,60))
    lowRes = downscale_local_mean(highRes, (3,3))
    global costMap
    costMap = lowRes.reshape(-1)
    

    

def global_plan_callback(data):
    with open(f'bag/log_{version}/global_plan_x_log.csv', 'a+') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(d.pose.position.x - currentPose[0] for d in data.poses)
        global currentPose
    with open(f'bag/log_{version}/global_plan_y_log.csv', 'a+') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(d.pose.position.y - currentPose[1] for d in data.poses)

    with open(f'bag/log_{version}/cmd_vel_log.csv', 'a+') as csvfile:
        global cmdVel
        writer = csv.writer(csvfile)
        writer.writerow(cmdVel)
    with open(f'bag/log_{version}/heading.csv', 'a+') as csvfile:
        global heading
        writer = csv.writer(csvfile)
        writer.writerow(heading)

    with open(f'bag/log_{version}/costmap.csv', 'a+') as csvfile:
        global costMap
        writer = csv.writer(csvfile)
        writer.writerow(costMap)


def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("cmd_vel", Twist, cmd_vel_callback)
    rospy.Subscriber("/move_base/DWAPlannerROS/global_plan",
                     Path, global_plan_callback)
    rospy.Subscriber("/odom", Odometry, odom_callback)
    rospy.Subscriber("/move_base/local_costmap/costmap", OccupancyGrid, costmap_callback)
    rospy.spin()


if __name__ == '__main__':
    listener()
