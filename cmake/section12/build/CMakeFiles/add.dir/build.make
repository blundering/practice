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
CMAKE_SOURCE_DIR = /Users/rubin/practice/cmake/section12

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rubin/practice/cmake/section12/build

# Include any dependencies generated for this target.
include CMakeFiles/add.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/add.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/add.dir/flags.make

CMakeFiles/add.dir/main.c.o: CMakeFiles/add.dir/flags.make
CMakeFiles/add.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rubin/practice/cmake/section12/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/add.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/add.dir/main.c.o   -c /Users/rubin/practice/cmake/section12/main.c

CMakeFiles/add.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/add.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rubin/practice/cmake/section12/main.c > CMakeFiles/add.dir/main.c.i

CMakeFiles/add.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/add.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rubin/practice/cmake/section12/main.c -o CMakeFiles/add.dir/main.c.s

# Object files for target add
add_OBJECTS = \
"CMakeFiles/add.dir/main.c.o"

# External object files for target add
add_EXTERNAL_OBJECTS =

add: CMakeFiles/add.dir/main.c.o
add: CMakeFiles/add.dir/build.make
add: math/libMath.a
add: CMakeFiles/add.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rubin/practice/cmake/section12/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable add"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/add.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/add.dir/build: add

.PHONY : CMakeFiles/add.dir/build

CMakeFiles/add.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/add.dir/cmake_clean.cmake
.PHONY : CMakeFiles/add.dir/clean

CMakeFiles/add.dir/depend:
	cd /Users/rubin/practice/cmake/section12/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rubin/practice/cmake/section12 /Users/rubin/practice/cmake/section12 /Users/rubin/practice/cmake/section12/build /Users/rubin/practice/cmake/section12/build /Users/rubin/practice/cmake/section12/build/CMakeFiles/add.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/add.dir/depend

