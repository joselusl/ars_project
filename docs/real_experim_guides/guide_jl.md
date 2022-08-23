
# Hardware configuration


Computer Optitrack (up)
- Ethernet: ROS network (red)
  - IP: 192.168.30.105


Use computer DRONESLAB02

Connect to DRONESLAB02
- Ethernet: ROS network (red)
  - IP: 192.168.30.129
- WiFi: DJI Tello

Connect your own laptop:
- Ethernet or WiFi
  - IP: 192.168.30.XXX
  - Ethernet: ROS Network (red)
  - WiFi: 
      - SSID: robotics.snt.uni.lu
      - Pass: control4uav



# Optitrack computer

1. Log in
  1.1. Credentials: TODO
2. Launch app Motive


# DRONESLAB02

0. Log in
    - Username : master_course
    - Password : master!uni


1. Check connections

2. Run in every terminal
    source $ARS_PROJECT/setup.bash 192.168.30.129

3. Launch
- ROS master
  - roscore
- Optitrack ROS Node
  - roslaunch vrpn_client_ros sample.launch server:=192.168.30.105
- DJI Tello driver
  - roslaunch ars_launchers dji_tello_driver_ros.launch connect_to_tello_wifi_auto:=False



# Your own computer

1. Check connections

2. In VM Virtual box
  - Settings -> Network -> Adapter -> 
    - Attached to:
      - From: NAT
      - To: Bridged Adapter
    - Name: Select the right one
    

3. In VM Configure your network as auto


4. Ensure to set up properly in every terminal the ROS_XX variables
  - Run in every terminal
    - source $ARS_PROJECT/setup.bash 192.168.30.129

5. Run everything
