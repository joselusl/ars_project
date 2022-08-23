#!/bin/bash
#echo "Running setup.sh .."
echo "-Setting ROS workspace"
#http://stackoverflow.com/questions/16011245/source-files-in-a-bash-script
. ${ARS_CATKIN_WORKSPACE}/devel/setup.bash

NETWORK_ROSCORE=$1

# http://stackoverflow.com/questions/6482377/bash-shell-script-check-input-argument
if [ -z $NETWORK_ROSCORE ] # Check if NETWORK_ROSCORE is NULL
  then
    echo "-Setting roscore in localhost"
    export ROS_MASTER_URI=http://localhost:11311
    export ROS_IP=localhost
    export ROS_HOSTNAME=localhost
  else
    echo "-Setting roscore in $NETWORK_ROSCORE"
    export ROS_MASTER_URI=http://$NETWORK_ROSCORE:11311
    OWN_IP=$(ifconfig | grep -Eo "192\.168\.30\.[0-9]{2,3}" | head -n1)
    echo "-My IP in network="$OWN_IP
    export ROS_IP=$OWN_IP
    export ROS_HOSTNAME=$OWN_IP
fi