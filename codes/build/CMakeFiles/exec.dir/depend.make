# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Note that incremental build could trigger a call to cmake_copy_f90_mod on each re-build
CMakeFiles/exec.dir/a.f90.o.provides.build: CMakeFiles/exec.dir/a.mod.stamp
CMakeFiles/exec.dir/a.mod.stamp: CMakeFiles/exec.dir/a.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod a.mod CMakeFiles/exec.dir/a.mod.stamp GNU
CMakeFiles/exec.dir/a.f90.o.provides.build:
	$(CMAKE_COMMAND) -E touch CMakeFiles/exec.dir/a.f90.o.provides.build
CMakeFiles/exec.dir/build: CMakeFiles/exec.dir/a.f90.o.provides.build
CMakeFiles/exec.dir/b.f90.o.provides.build: CMakeFiles/exec.dir/b.mod.stamp
CMakeFiles/exec.dir/b.mod.stamp: CMakeFiles/exec.dir/b.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod b.mod CMakeFiles/exec.dir/b.mod.stamp GNU
CMakeFiles/exec.dir/b.f90.o.provides.build:
	$(CMAKE_COMMAND) -E touch CMakeFiles/exec.dir/b.f90.o.provides.build
CMakeFiles/exec.dir/build: CMakeFiles/exec.dir/b.f90.o.provides.build
CMakeFiles/exec.dir/c.f90.o: CMakeFiles/exec.dir/a.mod.stamp
CMakeFiles/exec.dir/c.f90.o: CMakeFiles/exec.dir/d.mod.stamp
CMakeFiles/exec.dir/c.f90.o.provides.build: CMakeFiles/exec.dir/c.mod.stamp
CMakeFiles/exec.dir/c.mod.stamp: CMakeFiles/exec.dir/c.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod c.mod CMakeFiles/exec.dir/c.mod.stamp GNU
CMakeFiles/exec.dir/c.f90.o.provides.build:
	$(CMAKE_COMMAND) -E touch CMakeFiles/exec.dir/c.f90.o.provides.build
CMakeFiles/exec.dir/build: CMakeFiles/exec.dir/c.f90.o.provides.build
CMakeFiles/exec.dir/d.f90.o: CMakeFiles/exec.dir/b.mod.stamp
CMakeFiles/exec.dir/d.f90.o.provides.build: CMakeFiles/exec.dir/d.mod.stamp
CMakeFiles/exec.dir/d.mod.stamp: CMakeFiles/exec.dir/d.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod d.mod CMakeFiles/exec.dir/d.mod.stamp GNU
CMakeFiles/exec.dir/d.f90.o.provides.build:
	$(CMAKE_COMMAND) -E touch CMakeFiles/exec.dir/d.f90.o.provides.build
CMakeFiles/exec.dir/build: CMakeFiles/exec.dir/d.f90.o.provides.build
CMakeFiles/exec.dir/main.f90.o: CMakeFiles/exec.dir/c.mod.stamp