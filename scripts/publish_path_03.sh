#!/bin/bash

echo "Publishing trajectory":


ros2 topic pub -1 /robot_trajectory_ref nav_msgs/Path "header:
  stamp:
    sec: 0
    nanosec: 0
  frame_id: 'world'
poses:
- header:
    stamp:
      sec: 0
      nanosec: 0
    frame_id: 'world'
  pose:
    position:
      x: 0.0
      y: 0.0
      z: 1.0
    orientation:
      x: 0.0
      y: 0.0
      z: 0.0
      w: 1.0
- header:
    stamp:
      sec: 0
      nanosec: 0
    frame_id: 'world'
  pose:
    position:
      x: 6.0
      y: 0.0
      z: 1.0
    orientation:
      x: 0.0
      y: 0.0
      z: 0.707
      w: 0.707
- header:
    stamp:
      sec: 0
      nanosec: 0
    frame_id: 'world'
  pose:
    position:
      x: 6.0
      y: 6.0
      z: 1.0
    orientation:
      x: 0.0
      y: 0.0
      z: 1.0
      w: 0.0
- header:
    stamp:
      sec: 0
      nanosec: 0
    frame_id: 'world'
  pose:
    position:
      x: 0.0
      y: 6.0
      z: 1.0
    orientation:
      x: 0.0
      y: 0.0
      z: -0.707
      w: 0.707
- header:
    stamp:
      sec: 0
      nanosec: 0
    frame_id: 'world'
  pose:
    position:
      x: 0.0
      y: 0.0
      z: 1.0
    orientation:
      x: 0.0
      y: 0.0
      z: 0.0
      w: 1.0" 

