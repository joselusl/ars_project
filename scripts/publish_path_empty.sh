#!/bin/bash

echo "Publishing trajectory":


rostopic pub -1 /robot_trajectory_ref nav_msgs/Path "header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: 'world'
poses: []" 

