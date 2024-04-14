#!/bin/bash

sudo apt-get install -y ros-kinetic-nao-robot ros-kinetic-nao-meshes

sudo apt-get install -y ros-kinetic-moveit ros-kinetic-moveit-visual-tools

sudo apt-get install -y ros-kinetic-control-toolbox

cd ~/catkin_ws/src
git clone https://github.com/ros-naoqi/nao_moveit_config
git clone https://github.com/ros-naoqi/nao_virtual
git clone https://github.com/ros-naoqi/nao_dcm_robot

git clone https://github.com/roboticsgroup/roboticsgroup_gazebo_plugins.git # needs ros-kinetic-control to compile
git clone https://github.com/pal-robotics/pal_msgs.git
git clone -b kinetic-devel https://github.com/pal-robotics/pal_gazebo_plugins.git
cd ..
catkin_make

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
