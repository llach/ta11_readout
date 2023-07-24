# TA11 Readout

## ROS Messages and Services

`TA11.msg`

Used for publishing current sensor values. Contains two scalar force values along with the frames they are measured in.

`TA11Debug.msg`

The [Force Controller](https://github.com/llach/ta11_sensor_tools/tree/master/controller) based on TA11s uses this message to publish debug information about current control cycles.

`GetForceThreshold.srv`

Service to inquire about the current noise threshold, which gets calculated after each calibration.

## LabJack U6 Setup

1. Install [LabJackPython](https://github.com/labjack/LabJackPython)
2. Install [exodriver](https://github.com/labjack/exodriver)
3. Verify installation with `python -c "import u6"`

The cable connections for the TA11 sensors are as follows:

```
White --> AIN1
Green --> AIN2
Black -->  GND
Red   -->   VS
```