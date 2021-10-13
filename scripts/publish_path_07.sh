#!/bin/bash

echo "Publishing trajectory":


rostopic pub -1 /robot_trajectory_ref nav_msgs/Path "header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: 'world'
poses:
- header:
    seq: 0
    stamp:
      secs: 0
      nsecs: 0
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
    seq: 0
    stamp:
      secs: 0
      nsecs: 0
    frame_id: 'world'
  pose:
    position:
      x: 5.0
      y: 1.0
      z: 1.0
    orientation:
      x: 0.0
      y: 0.0
      z: 0.0
      w: 1.0
- header:
    seq: 0
    stamp:
      secs: 0
      nsecs: 0
    frame_id: 'world'
  pose:
    position:
      x: 6.0
      y: 6.0
      z: 1.0
    orientation:
      x: 0.0
      y: 0.0
      z: 0.0
      w: 1.0
- header:
    seq: 0
    stamp:
      secs: 0
      nsecs: 0
    frame_id: 'world'
  pose:
    position:
      x: 1.0
      y: 5.0
      z: 1.0
    orientation:
      x: 0.0
      y: 0.0
      z: 0.0
      w: 1.0
- header:
    seq: 0
    stamp:
      secs: 0
      nsecs: 0
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

