cmake_minimum_required(VERSION 3.30)
project(passwordmanager C)

set(CMAKE_C_STANDARD 11)

add_executable(passwordmanager main.c
        exporting.c
        exporting.h)
