# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/arno/Documents/CLUE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arno/Documents/CLUE/Build

# Include any dependencies generated for this target.
include Src/CLUE/CMakeFiles/CLUE.dir/depend.make

# Include the progress variables for this target.
include Src/CLUE/CMakeFiles/CLUE.dir/progress.make

# Include the compile flags for this target's objects.
include Src/CLUE/CMakeFiles/CLUE.dir/flags.make

Src/CLUE/CMakeFiles/CLUE.dir/Memory.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Memory.o: ../Src/CLUE/Memory.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arno/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Memory.o"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Memory.o -c /home/arno/Documents/CLUE/Src/CLUE/Memory.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Memory.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Memory.i"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arno/Documents/CLUE/Src/CLUE/Memory.cpp > CMakeFiles/CLUE.dir/Memory.i

Src/CLUE/CMakeFiles/CLUE.dir/Memory.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Memory.s"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arno/Documents/CLUE/Src/CLUE/Memory.cpp -o CMakeFiles/CLUE.dir/Memory.s

Src/CLUE/CMakeFiles/CLUE.dir/Memory.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Memory.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Memory.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Memory.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Memory.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Memory.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Memory.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Memory.o

Src/CLUE/CMakeFiles/CLUE.dir/Context.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Context.o: ../Src/CLUE/Context.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arno/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Context.o"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Context.o -c /home/arno/Documents/CLUE/Src/CLUE/Context.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Context.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Context.i"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arno/Documents/CLUE/Src/CLUE/Context.cpp > CMakeFiles/CLUE.dir/Context.i

Src/CLUE/CMakeFiles/CLUE.dir/Context.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Context.s"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arno/Documents/CLUE/Src/CLUE/Context.cpp -o CMakeFiles/CLUE.dir/Context.s

Src/CLUE/CMakeFiles/CLUE.dir/Context.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Context.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Context.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Context.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Context.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Context.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Context.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Context.o

Src/CLUE/CMakeFiles/CLUE.dir/Error.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Error.o: ../Src/CLUE/Error.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arno/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Error.o"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Error.o -c /home/arno/Documents/CLUE/Src/CLUE/Error.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Error.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Error.i"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arno/Documents/CLUE/Src/CLUE/Error.cpp > CMakeFiles/CLUE.dir/Error.i

Src/CLUE/CMakeFiles/CLUE.dir/Error.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Error.s"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arno/Documents/CLUE/Src/CLUE/Error.cpp -o CMakeFiles/CLUE.dir/Error.s

Src/CLUE/CMakeFiles/CLUE.dir/Error.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Error.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Error.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Error.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Error.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Error.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Error.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Error.o

# Object files for target CLUE
CLUE_OBJECTS = \
"CMakeFiles/CLUE.dir/Memory.o" \
"CMakeFiles/CLUE.dir/Context.o" \
"CMakeFiles/CLUE.dir/Error.o"

# External object files for target CLUE
CLUE_EXTERNAL_OBJECTS =

Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Memory.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Context.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Error.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/build.make
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libCLUE.a"
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && $(CMAKE_COMMAND) -P CMakeFiles/CLUE.dir/cmake_clean_target.cmake
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CLUE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Src/CLUE/CMakeFiles/CLUE.dir/build: Src/CLUE/libCLUE.a
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/build

Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Memory.o.requires
Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Context.o.requires
Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Error.o.requires
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/requires

Src/CLUE/CMakeFiles/CLUE.dir/clean:
	cd /home/arno/Documents/CLUE/Build/Src/CLUE && $(CMAKE_COMMAND) -P CMakeFiles/CLUE.dir/cmake_clean.cmake
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/clean

Src/CLUE/CMakeFiles/CLUE.dir/depend:
	cd /home/arno/Documents/CLUE/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arno/Documents/CLUE /home/arno/Documents/CLUE/Src/CLUE /home/arno/Documents/CLUE/Build /home/arno/Documents/CLUE/Build/Src/CLUE /home/arno/Documents/CLUE/Build/Src/CLUE/CMakeFiles/CLUE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/depend

