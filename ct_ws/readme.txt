***小车先接入 /dev/ttyUSB0      雷达/dev/ttyUSB1****
sudo chmod 777 /dev/ttyUSB*

***************************Ubantu18.04********************************
roslaunch robot_bringup xiaoqiang_bringup.launch 
roslaunch learning_navigation slam_amcl.launch

*****************小车相关的文件前缀为xiaoqiang  ******************
******************  仿真用到的机器人文件robot      ************
sc_mini是赤兔车载雷达，在某些时候catkin_make可能编译不成功:sc_mini.cpp:(.text+0x3082)：对‘flush_port()’未定义的引用，
需要进入功能包cmake .  后make；
cd ./src/sc_mini/
cmake .
make
生成的可执行文件catkin_ws/src/sc_mini/devel/lib/sc_mini 移到工作空间catkin_ws/devel/lib/sc_mini

***************************Ubantu20.04********************************
galileo_serial_server
xiaoqiang_log
xqserial_server(chitu3-noetic)


******************************** 两机通信********************************
https://blog.csdn.net/qq_42037180/article/details/81144561

rosrun teleop_twist_keyboard teleop_twist_keyboard.py

u左前     i直行前进    o右前

j逆时针转   k停止      l顺时针转

 m左后   ，直行后退   .右后

