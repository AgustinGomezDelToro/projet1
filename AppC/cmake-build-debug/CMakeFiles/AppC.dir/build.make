# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/AppC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/AppC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AppC.dir/flags.make

CMakeFiles/AppC.dir/main.c.o: CMakeFiles/AppC.dir/flags.make
CMakeFiles/AppC.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/AppC.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/AppC.dir/main.c.o   -c /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/main.c

CMakeFiles/AppC.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/AppC.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/main.c > CMakeFiles/AppC.dir/main.c.i

CMakeFiles/AppC.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/AppC.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/main.c -o CMakeFiles/AppC.dir/main.c.s

CMakeFiles/AppC.dir/curlweather.c.o: CMakeFiles/AppC.dir/flags.make
CMakeFiles/AppC.dir/curlweather.c.o: ../curlweather.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/AppC.dir/curlweather.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/AppC.dir/curlweather.c.o   -c /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/curlweather.c

CMakeFiles/AppC.dir/curlweather.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/AppC.dir/curlweather.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/curlweather.c > CMakeFiles/AppC.dir/curlweather.c.i

CMakeFiles/AppC.dir/curlweather.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/AppC.dir/curlweather.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/curlweather.c -o CMakeFiles/AppC.dir/curlweather.c.s

CMakeFiles/AppC.dir/ConnectBDD.c.o: CMakeFiles/AppC.dir/flags.make
CMakeFiles/AppC.dir/ConnectBDD.c.o: ../ConnectBDD.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/AppC.dir/ConnectBDD.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/AppC.dir/ConnectBDD.c.o   -c /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/ConnectBDD.c

CMakeFiles/AppC.dir/ConnectBDD.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/AppC.dir/ConnectBDD.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/ConnectBDD.c > CMakeFiles/AppC.dir/ConnectBDD.c.i

CMakeFiles/AppC.dir/ConnectBDD.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/AppC.dir/ConnectBDD.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/ConnectBDD.c -o CMakeFiles/AppC.dir/ConnectBDD.c.s

# Object files for target AppC
AppC_OBJECTS = \
"CMakeFiles/AppC.dir/main.c.o" \
"CMakeFiles/AppC.dir/curlweather.c.o" \
"CMakeFiles/AppC.dir/ConnectBDD.c.o"

# External object files for target AppC
AppC_EXTERNAL_OBJECTS =

AppC: CMakeFiles/AppC.dir/main.c.o
AppC: CMakeFiles/AppC.dir/curlweather.c.o
AppC: CMakeFiles/AppC.dir/ConnectBDD.c.o
AppC: CMakeFiles/AppC.dir/build.make
AppC: CMakeFiles/AppC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable AppC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AppC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AppC.dir/build: AppC

.PHONY : CMakeFiles/AppC.dir/build

CMakeFiles/AppC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AppC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AppC.dir/clean

CMakeFiles/AppC.dir/depend:
	cd /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug /mnt/c/Users/estel/Desktop/PA/Projet-Annuel/AppC/cmake-build-debug/CMakeFiles/AppC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AppC.dir/depend

