cmake_minimum_required(VERSION 2.8.3)
project(navigation-containers)

# Load catkin and all dependencies required for this package
find_package(catkin REQUIRED COMPONENTS )

# What other packages will need to use this package
catkin_package(
    CATKIN_DEPENDS
)

include_directories(${catkin_INCLUDE_DIRS})

# Mark executables and/or libraries for installation
install(TARGETS #laser_footprint_filter
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
