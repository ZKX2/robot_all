问题Could not find a package configuration file provided by "amcl" with any of the following names:
sudo apt-get install ros-noetic-navigation
问题缺少gmapping
sudo apt-get install ros-noetic-gmapping

问题缺少Checking for module 'orocos-bfl'  No package 'orocos-bfl' found
sudo apt-get install liborocos-bfl-dev

问题缺少 Could not find the required component 'serial
sudo apt-get install ros-noetic-serial

下载雷达16线驱动
sudo apt-get install libpcap-dev

配置ROS控制器(特别是ros_control框架和diff_drive_controller控制器)
sudo apt-get install ros-noetic-ros-control ros-noetic-ros-controllers

sudo chmod 777 /dev/ttyACM0

参考csdn：https://blog.csdn.net/weixin_50844034/article/details/134995454?ops_request_misc=&request_id=&biz_id=102&utm_term=ubuntu20%E5%A4%8D%E7%8E%B0lioslam&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduweb~default-1-134995454.142^v100^pc_search_result_base5&spm=1018.2226.3001.4187
参考csdn：https://blog.csdn.net/Kenneth666888/article/details/140328100?spm=1001.2101.3001.6650.14&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-14-140328100-blog-134995454.235%5Ev43%5Epc_blog_bottom_relevance_base2&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-14-140328100-blog-134995454.235%5Ev43%5Epc_blog_bottom_relevance_base2&utm_relevant_index=20

参考csdn:https://blog.csdn.net/qq_52383168/article/details/126300616?utm_medium=distribute.pc_relevant.none-task-blog-2~default~baidujs_baidulandingword~default-5-126300616-blog-123363263.pc_relevant_default&spm=1001.2101.3001.4242.4&utm_relevant_index=8

下面这句命令意思就是录制只/velodyne_points /imu/data两个话题的数据包

rosbag record -O lidar_imu.bag /velodyne_points /xqserial_server/IMU

雷达和imu标定
roslaunch lidar_align lidar_align.launch
：
imu_utils:标定imu内参：
录制两小时
rosbag record /xqserial_server/IMU -O imu.bag （采用自己话题）
标定
rosbag play -r 200　imu_utils/imu.bag
roslaunch imu_utils imu_test.launch 



相机内参标定：
roslaunch realsense2_camera rs_camera.launch
rosrun camera_calibration cameracalibrator.py --size 13x9 --square 0.2 image:=/camera/color/image_raw camera:=/camera/color --no-service-check
打开后：
	x：表示标定板在视野中的左右位置。
	y：表示标定板在视野中的上下位置。
	size：标定板离摄像头的远近。
	skew：标定板在视野中的倾斜位置
通过不停的移动标定板：直到X、Y、Size、Skew四个都变成绿色，点击“CALIBRATE”界面卡住，开始计算标定，完成后可点击“save”进行保存，文件保存路径在终端里有显示。再将标定板放在视野里时，右上角会出现一个数值，代表标定误差。

雷达和相机标定：
参考：https://github.com/Xujianhong123Allen/sensor_calibration/tree/master/cam_lidar_calibration


3d-2d
#安装octomap
sudo apt-get install ros-melodic-octomap-ros 
sudo apt-get install ros-melodic-octomap-server
 
#安装octomap在rviz中的插件
 sudo apt-get install ros-melodic-octomap-rviz-plugins
 
 
修改far_planner参数适用阿克曼车参考https://blog.csdn.net/weixin_59426666/article/details/134873613?spm=1001.2014.3001.5501
 
gazebo仿真控制：
在robot_model_visualization.launch中修改参数：gazebo_use=true和car_use=false
在car_control.launch文件中封装了gazebo的插件和控制器等文件发布了/cmd_vel,/odom等话题


