# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rubin/practice/cmake/section8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rubin/practice/cmake/section8/build

# Include any dependencies generated for this target.
include math/CMakeFiles/Math.dir/depend.make

# Include the progress variables for this target.
include math/CMakeFiles/Math.dir/progress.make

# Include the compile flags for this target's objects.
include math/CMakeFiles/Math.dir/flags.make

math/CMakeFiles/Math.dir/math.c.o: math/CMakeFiles/Math.dir/flags.make
math/CMakeFiles/Math.dir/math.c.o: ../math/math.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rubin/practice/cmake/section8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object math/CMakeFiles/Math.dir/math.c.o"
	cd /Users/rubin/practice/cmake/section8/build/math && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Math.dir/math.c.o   -c /Users/rubin/practice/cmake/section8/math/math.c

math/CMakeFiles/Math.dir/math.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Math.dir/math.c.i"
	cd /Users/rubin/practice/cmake/section8/build/math && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rubin/practice/cmake/section8/math/math.c > CMakeFiles/Math.dir/math.c.i

math/CMakeFiles/Math.dir/math.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Math.dir/math.c.s"
	cd /Users/rubin/practice/cmake/section8/build/math && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rubin/practice/cmake/section8/math/math.c -o CMakeFiles/Math.dir/math.c.s

# Object files for target Math
Math_OBJECTS = \
"CMakeFiles/Math.dir/math.c.o"

# External object files for target Math
Math_EXTERNAL_OBJECTS =

math/libMath.a: math/CMakeFiles/Math.dir/math.c.o
math/libMath.a: math/CMakeFiles/Math.dir/build.make
math/libMath.a: math/CMakeFiles/Math.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rubin/practice/cmake/section8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libMath.a"
	cd /Users/rubin/practice/cmake/section8/build/math && $(CMAKE_COMMAND) -P CMakeFiles/Math.dir/cmake_clean_target.cmake
	cd /Users/rubin/practice/cmake/section8/build/math && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Math.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
math/CMakeFiles/Math.dir/build: math/libMath.a

.PHONY : math/CMakeFiles/Math.dir/build

math/CMakeFiles/Math.dir/clean:
	cd /Users/rubin/practice/cmake/section8/build/math && $(CMAKE_COMMAND) -P CMakeFiles/Math.dir/cmake_clean.cmake
.PHONY : math/CMakeFiles/Math.dir/clean

math/CMakeFiles/Math.dir/depend:
	cd /Users/rubin/practice/cmake/section8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rubin/practice/cmake/section8 /Users/rubin/practice/cmake/section8/math /Users/rubin/practice/cmake/section8/build /Users/rubin/practice/cmake/section8/build/math /Users/rubin/practice/cmake/section8/build/math/CMakeFiles/Math.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : math/CMakeFiles/Math.dir/depend

