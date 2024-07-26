# Receiving the data from the optitrack
Here you will find the steps to receive the data from the optitrack system.

## Motive
We use the `Motive` software to set the world and object for our experiments.

In the Optitrack PC, go to 

`C:\Users\Public\Public Documents\OptiTrack\MasterCourse`

There you will find the created rigid bodies for this project.

**~ Do not make any changes to the files ~**

If you wish to create your own project, please follow the [Optitrack Guide](https://github.com/snt-arg/master_course_sem3/tree/main/guides/optitrackGuide.md).

## Setting up your machine
One of the workstations in the lab will be running the ROS master node.
They have the following IPs
> DronesLab01 : 192.168.30.106

> DronesLab02 : 192.168.30.129

- You need to connect to `robotics.snt.uni.lu` network
- Check your IP, it should look like: `198.168.30.xx`
- In each of the terminals you will use, you need to type the following
    ```
    export ROS_MASTER_URI=http://<ROS master IP>:11311
    export ROS_IP=<ROS master IP>
    export ROS_HOSTNAME=192.168.30.xx
    ```
    where 192.168.30.xx is your IP and the `<ROS master IP>` can be the IP of either `DronesLab01` or `DronesLab02`.    

    *You can add those commands in your bashrc/zshrc at your own risk.*

## In the Workstation

Please login with the following credentials
- **username**: `master_course`
- **password**: `master!uni`

You can find the commands you need to run in `~/Desktop/get_data.txt`

Steps:
- You need to open 4 terminals
- In the first terminal you launch `roscore` by typing
    ```
    roscore
    ```
- In the second terminal you launch the `vrpn client` by typing
    ```
    roslaunch vrpn_client_ros sample.launch server:=192.168.30.105
    ```
    where `192.168.30.105` is the IP of the Optitrack PC

- To publish the position of the static obstacles you type
    ```
    rosrun optitrack_environment arena_environment_ros_static_node.py
    ```
- To publish the position of the dynamic obstacles you type
    ```
    rosrun optitrack_environment_dynamic arena_environment_ros_dynamic_node.py
    ```

## Setup a workstation
If you wish to setup another workstation do the following:
- Create a catkin worskpace. If you are unsure how to do it follow this [guide](https://wiki.ros.org/catkin/Tutorials/create_a_workspace)
- Clone the [Optitrack environment](https://github.com/snt-arg/master_course_sem3/tree/main/packages/optitrack_environment) package and the [vrpn_client_ros](https://github.com/ros-drivers/vrpn_client_ros) package in the `src` folder.
- Build the workspace
- Create a ROS network by setting up the IPs of the machines (`ROS_MASTER_URI`, `ROS_IP` and `ROS_HOSTNAME`)

**When attempting to publish the data from the optitrack verify you are on the same network!**

## Verification
You can check if you see the topics from your machine with 
```
rostopic list
```
In addition, you can verify if you see the data from a topic by running
```
rostopic echo <name of topic>
```



