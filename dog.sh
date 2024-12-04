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

# # 启动（vehicle_simulator）
gnome-terminal -- bash -c "screen -S vehicle_simulator_dog_screen -t vehicle_simulator bash -c 'source $BASE_PATH/autonomous_exploration_development_environment/devel/setup.bash; roslaunch vehicle_simulator system_real_robot.launch; exec bash'" &
if [ "$explore_set" = "true" ]; then
    echo "启用人为设置目标点探索" 
    # 启动 (far_planner）
    gnome-terminal -- bash -c "screen -S far_planner_car_screen -t far_planner bash -c 'source $BASE_PATH/far_planner/devel/setup.bash; roslaunch far_planner far_planner.launch; exec bash'"&
    # 启动(ct_clent)
    gnome-terminal -- bash -c "screen -S dog_clent_screen -t dog_clent bash -c 'source $BASE_PATH/go2_dog_ws/devel/setup.bash; rosrun unitree_move_base  Dog_Client.py; exec bash'" &
    # 启动(ct_server)
    gnome-terminal -- bash -c "screen -S dog_server_screen -t dog_server bash -c 'source $BASE_PATH/go2_dog_ws/devel/setup.bash; rosrun unitree_move_base  Dog_Server.py; exec bash'" &
else
    # 启动（tare_planner）
    echo "启用自动探索"
    gnome-terminal -- bash -c "screen -S tare_planner_car_screen -t tare_planner bash -c 'source $BASE_PATH/tare_planner/devel/setup.bash; roslaunch tare_planner explore_matterport.launch ; exec bash'"&
fi
# 启动（unitree_move_base）
gnome-terminal -- bash -c "screen -S unitree_screen -t unitree bash -c 'source $BASE_PATH/go2_dog_ws/devel/setup.bash; roslaunch unitree_move_base gazebo_move_base.launch; exec bash'" &

# 启动（control_ctrl）
gnome-terminal -- bash -c "screen -S control_ctrl_screen -t control_ctrl bash -c 'source $BASE_PATH/go2_dog_ws/devel/setup.bash; sudo $BASE_PATH/go2_dog_ws/devel/lib/unitree_guide/junior_ctrl; exec bash'" &

# # 等待所有后台进程完成
wait
echo "All launch files are started."
