go2(go2_dog_ws):

	运行sh文件就可以启动导航 先运行roscore 再 cd robot_all 运行./dog.sh

	启动仿真gazebo 和lio-sam
	roslaunch unitree_move_base gazebo_move_base.launch

	启动控制器：
	sudo ./devel/lib/unitree_guide/junior_ctrl
	按数字2再按5进入move-base状态
	按gazebo开始按钮
	
	启动人为设置目标点
	rosrun unitree_move_base  Dog_Server.py
	rosrun unitree_move_base  Dog_Client.py


new_car(car_ws):

	运行sh文件就可以启动导航 先运行roscore 再 cd robot_all 运行./car.sh
	
	设置参数gazebo_use和car_use控制仿真还是实车
	启动控制
	roslaunch turn_on_wheeltec_robot User_Startup.launch 
	启动人为设置目标点
	rosrun turn_on_wheeltec_robot  car_Server.py
	rosrun turn_on_wheeltec_robot  car_Client.py

ct_car(ct_ws):

	运行sh文件就可以启动导航 先运行roscore 再 cd robot_all 运行./ct.sh
	
	设置参数gazebo_use和car_use控制仿真还是实车
	启动控制
	roslaunch robot_bringup xiaoqiang_bringup.launch 
	启动人为设置目标点
	rosrun turn_on_wheeltec_robot  ct_Server.py
	rosrun turn_on_wheeltec_robot  ct_Client.py
	
启动导航算法：
	cd robot_all/autonomous_exploration_development_environment
	
	car:
		roslaunch vehicle_simulator system_real_robot_car.launch 
	dog:
		roslaunch vehicle_simulator system_real_robot.launch 
	FAR规划器：	
	cd robot_all/far_planner
	roslaunch far_planner far_planner.launch
	TARE规划器
	cd robot_all/tare_planner
	roslaunch tare_planner explore_matterport.launch 
	
	

	
	
	
	
	
