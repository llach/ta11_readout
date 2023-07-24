cmake_minimum_required(VERSION 3.5.2)
project(ta11_readout)

find_package(catkin REQUIRED
        std_msgs
        message_generation
        )

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
add_message_files(
        FILES
        TA11.msg
        TA11Debug.msg
        ModelDebug.msg
)

add_service_files(
        FILES
        GetForceThreshold.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
        DEPENDENCIES
        std_msgs  # Or other packages containing msgs
)

###################################
## catkin specific configuration ##
###################################
catkin_package(
        CATKIN_DEPENDS message_runtime std_msgs
)


install(PROGRAMS
  scripts/publish_ta11.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
