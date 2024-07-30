#!/bin/bash

echo "Publishing trajectory":


ros2 topic pub -1 /robot_trajectory_ref nav_msgs/Path "header:
  stamp:
    sec: 0
    nanosec: 0
  frame_id: 'world'
poses: []" 

