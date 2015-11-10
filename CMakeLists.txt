cmake_minimum_required (VERSION 2.8)
project (MySaw)

##### pass in where the SuperCollider headers are installed, e.g. invoke cmake with:
# cmake -DSC_PATH=/usr/local/include/SuperCollider ..
#####
message( "${SC_PATH}" )

include_directories(${SC_PATH}/plugin_interface)
include_directories(${SC_PATH}/common)
# include_directories(${SC_PATH}/external_libraries/libsndfile/)

set(CMAKE_SHARED_MODULE_PREFIX "")
if(APPLE OR WIN32)
set(CMAKE_SHARED_MODULE_SUFFIX ".scx")
endif()

add_library(MySaw MODULE MySaw.cpp)

### install to home directory with:
## mkdir ~/.local/share/SuperCollider/Extensions/myugens
## cp MySaw.so ~/.local/share/SuperCollider/Extensions/myugens/
## cp ../MySaw.sc ~/.local/share/SuperCollider/Extensions/myugens/