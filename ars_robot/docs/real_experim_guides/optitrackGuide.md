# Optitrack Guide
Here you may find the steps needed to create and use a project in the Motive software.

## Create new project
- Open Motive
- Go to `File` and click on `New Project..` and choose where you wish to save your project.
- Go to `File` and click on `Open..` and choose the calibration file suitable for you.
- Open the `Steaming Pane` tab and verify if 
    
    - the `Local Interface` is set to `192.168.30.105`, 
    - the `Stream Rigid Bodies` is set to `True`,
    - the `Up Axis` is set to `Z Up`,
    - the `Type` is set to `Multicast`

    If you are using `VRPN` to broadcast, you need to check the corresponding box.

Rotate the `Perspective View` pane such that corresponds to the real view.

## Adding Rigid Body
Assuming that you have placed the tracking markers on the objects you wish to localize in a non-symmetrical position you need to add the body in the Motive system.

If you are adding a dynamic body such as drone. you need to place it in the center to point forward.

We suggest to use the "chess" wooden board near the flight arena. 

- If you use the wooden board, you need to place it on the x/y axis. 
- Place a spare tracking marker in the middle of one square
- Place the object pointing forward such as the spare marker divides the body of the object in two.

To add the body you need to do the following:
- Select all the tracking markers, right click on them choose `Rigid Body` and then `Create From Selected Markers`.

    **Important: Be careful to not select the spare marker!!**
- Go to the propetries of the body by right clicking on it and choosing `Properties..`
- Click on the chosen asset and rename it to a unique name
- Click on the `Display` tab and set `Orientation` to true
- Go tho the `Transformation` tab and go to the `Rigid Body Pivot-Point Translation` to set the axis to be at the middle of the spare marker.

    _Note: Be careful when choosing the axis to change_

## Set Axis
Before doing the following steps, verify if you the direction of the objects and the world matches the one in RVIZ.

If the direction does not match, you might need to do the following steps, but do verify after each step if it is correct.

### World
First you need to change the world axis such that they correspond to RVIZ:
- Open the `Streaming Pane` from the menu bar
- Go to the `Ground Plane` settings in `Camera Calibration`
- In the `capture Volume Rotation (degrees)` set the `Y Axis` to 90 and click on `Apply Rotation`
- Put back 0, so that you do not risk to apply one more time the 90 degrees.

### Rigid Body
If in any case you need to change the axis of the dynamic rigid body
- Open the properties of the Rigid body
- Click on `Transofrmation` tab and go to the `Rigid Body Orientation` to set the required axis

## Export
When you are happy with the direction of the added bodies, you have the option to export the whole project (world and bodies), only bodies or selected bodies.
