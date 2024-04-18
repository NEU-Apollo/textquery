cmake_minimum_required(VERSION 3.0.0)
project(textquery VERSION 0.1.0 LANGUAGES C CXX)

# 静态库
set(LIB_PATH ${CMAKE_CURRENT_SOURCE_DIR}/lib)
# 可执行文件目录
set(EXEC_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)
# 头文件目录
set(HEADER_PATH ${CMAKE_CURRENT_SOURCE_DIR}/include)

# 静态库名
set(STATIC_LIB static_lib)
# 可执行程序名
set(EXEC_NAME exec)

# 子目录
add_subdirectory(cpp_src)
add_subdirectory(exec)