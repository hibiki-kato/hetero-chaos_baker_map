cmake_minimum_required(VERSION 3.18.4)
enable_language(Fortran)

# set the project name
project(simple-dependency Fortran)

# set the name of the executable 
set(EXECUTABLE exec)


find_package(OpenMP REQUIRED)

# make a list of source files
add_executable(${EXECUTABLE}
   main.f90
   maps.f90
   )

set(CMAKE_NO_CACHE TRUE)

# set the compiler flags
set(CMAKE_CXX_FLAGS "-std=f2018 -O2　-ffree-line-length-none -fopenmp")