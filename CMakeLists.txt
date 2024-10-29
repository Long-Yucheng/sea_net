# only for cmake --version >= 3.16.3
cmake_minimum_required(VERSION 3.16.3)

# project name
project(sea_net)

# set the C++11 standard
set(CMAKE_CXX_STANDARD 11)

file(GLOB_RECURSE SOURCE_FILES "src/*.cpp")
add_library(${PROJECT_NAME} ${SOURCE_FILES})

# 生成可执行文件
add_executable(main main.cpp)

# 将库文件链接到可执行文件
target_link_libraries(main ${PROJECT_NAME})