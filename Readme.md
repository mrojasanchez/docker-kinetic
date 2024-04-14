## Instructions
Clone repository

In a terminal run the scripts in the following order:
	
	bash docker-build.sh 
	bash docker-run.sh

Inside the container, run:

	bash ../scripts/nao_installation.sh

 **Accept** everything when asked.

Then you can test that everything works, e.g. MoveIt!:

	roslaunch nao_moveit_config demo.launch 

Or test the Nao in Gazebo (not working 100%):

	roslaunch nao_gazebo_plugin nao_gazebo_plugin_H25.launch

## References:
- https://github.com/nlyubova/tutorials-for-Nao-Pepper-Romeo/blob/master/distr/tuto_kinetic.rst

## Useful resources:

- https://github.com/vvv-school/vvv17/wiki/School-material 
- https://github.com/vvv-school/vvv18/wiki/School-material

Specifically, check Day 2: ROS & presentations

