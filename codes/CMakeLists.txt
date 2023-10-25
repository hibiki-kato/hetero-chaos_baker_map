cmake_minimum_required(VERSION 3.27.7)
enable_language(Fortran)

# set the project name
project(simple-dependency Fortran)

# set the name of the executable 
set(EXECUTABLE exec)


find_package(OpenMP REQUIRED)

# make a list of source files
add_executable(${EXECUTABLE}
  a.f90
  b.f90
  c.f90
  d.f90
  main.f90
  )

set(CMAKE_NO_CACHE TRUE)

# set the compiler flags
set(CMAKE_CXX_FLAGS "-std=f2018 -O2　-ffree-line-length-none -fopenmp")