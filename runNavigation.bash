source ./devel/setup.bash
export TURTLEBOT3_MODEL=burger
roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/turtlebot_gazebo/map.yaml

