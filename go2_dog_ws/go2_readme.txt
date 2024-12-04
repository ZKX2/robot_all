启动仿真gazebo
roslaunch unitree_move_base gazebo_move_base.launch

启动控制器：
sudo ./devel/lib/unitree_guide/junior_ctrl

启动lio-sam
roslaunch unitree_move_base all.launch
先2-5就进入move-base状态（cmd_vel控制）
2-4可以采用wasd键盘控制

启动move_base的模式之后，就可以使用cmd_vel话题控制，在unitree_guide的src/control/Estimator.cpp中注释odom坐标系的发布就可以使用slam算法。

可以在unitree_guide的cmakelist文件中修改模式参数，例如打开move_base状态，启用仿真还是实机。

