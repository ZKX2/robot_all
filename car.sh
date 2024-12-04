#!/bin/bash

# 定义基础路径变量
BASE_PATH="/home/roszkx20/robot_all"
# 定义是否人为设置点
explore_set=true

# 定义一个函数来source工作空间
source_workspace() {
    echo "Sourcing workspace: $1"
    if [ -f "$1" ]; then
        source "$1"
    else
        echo "Error: File $1 not found!"
        exit 1
    fi
}

# 启动第一个 ROS 包（vehicle_simulator）
gnome-terminal -- bash -c "screen -S vehicle_simulator_car_screen -t vehicle_simulator bash -c 'source $BASE_PATH/autonomous_exploration_development_environment/devel/setup.bash; roslaunch vehicle_simulator system_real_robot_car.launch; exec bash'" &
if [ "$explore_set" = "true" ]; then
    echo "启用人为设置目标点探索" 
    # 启动 far_planner）
    gnome-terminal -- bash -c "screen -S far_planner_car_screen -t far_planner bash -c 'source $BASE_PATH/far_planner/devel/setup.bash; roslaunch far_planner far_planner.launch; exec bash'"&
    # 启动(car_clent)
    gnome-terminal -- bash -c "screen -S car_clent_screen -t car_clent bash -c 'source $BASE_PATH/car_ws/devel/setup.bash; rosrun turn_on_wheeltec_robot  car_Client.py; exec bash'" &
    # 启动(car_server)
    gnome-terminal -- bash -c "screen -S car_server_screen -t car_server bash -c 'source $BASE_PATH/car_ws/devel/setup.bash; rosrun turn_on_wheeltec_robot  car_Server.py; exec bash'" &
else
# 启动第二个 ROS 包（tare_planner）
    echo "启用自动探索"
    gnome-terminal -- bash -c "screen -S tare_planner_car_screen -t tare_planner bash -c 'source $BASE_PATH/tare_planner/devel/setup.bash; roslaunch tare_planner explore_matterport.launch ; exec bash'"&
fi
# 启动第三个 ROS 包（wheeltec_robot）
echo "开启car驱动"
gnome-terminal -- bash -c "screen -S wheeltec_robot_screen -t wheeltec_robot bash -c 'source $BASE_PATH/car_ws/devel/setup.bash; roslaunch turn_on_wheeltec_robot User_Startup.launch; exec bash'" &

# 等待所有后台进程完成
wait
echo "All launch files are started."
