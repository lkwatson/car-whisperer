set(AM_SOURCES "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_controlpanel/src/myviz.cpp;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_controlpanel/src/QtPanel.cpp;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_controlpanel/src/CPFunctions.cpp;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_controlpanel/src/main.cpp" )
set(AM_HEADERS "" )
set(AM_MOC_COMPILE_DEFINITIONS "QT_CORE_LIB;QT_GUI_LIB;QT_NO_DEBUG;QT_NO_KEYWORDS;ROSCONSOLE_BACKEND_LOG4CXX;ROS_BUILD_SHARED_LIBS=1;ROS_PACKAGE_NAME=\"kobuki_fleet_controlpanel\"")
set(AM_MOC_INCLUDES "/home/odroid/car-whisper/devel/include;/opt/ros/indigo/include;/usr/include/eigen3;/usr/include/OGRE;/usr/include/opencv;/usr/include/qt4;/usr/include/qt4/QtGui;/usr/include/qt4/QtCore;/usr/include")
set(AM_MOC_OPTIONS "")
set(AM_CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE "")
set(AM_CMAKE_BINARY_DIR "/home/odroid/car-whisper/build/")
set(AM_CMAKE_SOURCE_DIR "/home/odroid/car-whisper/src/")
set(AM_QT_MOC_EXECUTABLE "/usr/lib/arm-linux-gnueabihf/qt4/bin/moc")
if(DEFINED ENV{DEB_BUILD_MULTIARCH} AND DEFINED ENV{DEB_HOST_MULTIARCH} AND "/usr/lib/arm-linux-gnueabihf/qt4/bin/moc" MATCHES "/usr/lib/$ENV{DEB_HOST_MULTIARCH}/qt5/bin/moc")
  set(AM_QT_MOC_EXECUTABLE "/usr/lib/$ENV{DEB_BUILD_MULTIARCH}/qt5/bin/moc")
endif()
set(AM_CMAKE_CURRENT_SOURCE_DIR "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_controlpanel/")
set(AM_CMAKE_CURRENT_BINARY_DIR "/home/odroid/car-whisper/build/kobuki_fleet/kobuki_fleet_controlpanel/")
set(AM_QT_VERSION_MAJOR "4")
set(AM_TARGET_NAME "myviz_automoc")
set(AM_RELAXED_MODE "FALSE")
