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
CMAKE_SOURCE_DIR = /home/scttbrn/Documents/CLUE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/scttbrn/Documents/CLUE/Build

# Include any dependencies generated for this target.
include Src/CLUE/CMakeFiles/CLUE.dir/depend.make

# Include the progress variables for this target.
include Src/CLUE/CMakeFiles/CLUE.dir/progress.make

# Include the compile flags for this target's objects.
include Src/CLUE/CMakeFiles/CLUE.dir/flags.make

Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o: ../Src/CLUE/Histogram/Histogram64.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/scttbrn/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Histogram/Histogram64.o -c /home/scttbrn/Documents/CLUE/Src/CLUE/Histogram/Histogram64.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Histogram/Histogram64.i"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/scttbrn/Documents/CLUE/Src/CLUE/Histogram/Histogram64.cpp > CMakeFiles/CLUE.dir/Histogram/Histogram64.i

Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Histogram/Histogram64.s"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/scttbrn/Documents/CLUE/Src/CLUE/Histogram/Histogram64.cpp -o CMakeFiles/CLUE.dir/Histogram/Histogram64.s

Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o

Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o: ../Src/CLUE/Core/Common.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/scttbrn/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Core/Common.o -c /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Common.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Core/Common.i"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Common.cpp > CMakeFiles/CLUE.dir/Core/Common.i

Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Core/Common.s"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Common.cpp -o CMakeFiles/CLUE.dir/Core/Common.s

Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o

Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o: ../Src/CLUE/Core/Error.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/scttbrn/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Core/Error.o -c /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Error.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Core/Error.i"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Error.cpp > CMakeFiles/CLUE.dir/Core/Error.i

Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Core/Error.s"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Error.cpp -o CMakeFiles/CLUE.dir/Core/Error.s

Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o

Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o: ../Src/CLUE/Core/Context.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/scttbrn/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Core/Context.o -c /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Context.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Core/Context.i"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Context.cpp > CMakeFiles/CLUE.dir/Core/Context.i

Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Core/Context.s"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Context.cpp -o CMakeFiles/CLUE.dir/Core/Context.s

Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o

Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o: ../Src/CLUE/Core/Program.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/scttbrn/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Core/Program.o -c /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Program.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Core/Program.i"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Program.cpp > CMakeFiles/CLUE.dir/Core/Program.i

Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Core/Program.s"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Program.cpp -o CMakeFiles/CLUE.dir/Core/Program.s

Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o

Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o: Src/CLUE/CMakeFiles/CLUE.dir/flags.make
Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o: ../Src/CLUE/Core/Memory.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/scttbrn/Documents/CLUE/Build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CLUE.dir/Core/Memory.o -c /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Memory.cpp

Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLUE.dir/Core/Memory.i"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Memory.cpp > CMakeFiles/CLUE.dir/Core/Memory.i

Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLUE.dir/Core/Memory.s"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/scttbrn/Documents/CLUE/Src/CLUE/Core/Memory.cpp -o CMakeFiles/CLUE.dir/Core/Memory.s

Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o.requires:
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o.requires

Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o.provides: Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o.requires
	$(MAKE) -f Src/CLUE/CMakeFiles/CLUE.dir/build.make Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o.provides.build
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o.provides

Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o.provides.build: Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o

# Object files for target CLUE
CLUE_OBJECTS = \
"CMakeFiles/CLUE.dir/Histogram/Histogram64.o" \
"CMakeFiles/CLUE.dir/Core/Common.o" \
"CMakeFiles/CLUE.dir/Core/Error.o" \
"CMakeFiles/CLUE.dir/Core/Context.o" \
"CMakeFiles/CLUE.dir/Core/Program.o" \
"CMakeFiles/CLUE.dir/Core/Memory.o"

# External object files for target CLUE
CLUE_EXTERNAL_OBJECTS =

Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/build.make
Src/CLUE/libCLUE.a: Src/CLUE/CMakeFiles/CLUE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libCLUE.a"
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && $(CMAKE_COMMAND) -P CMakeFiles/CLUE.dir/cmake_clean_target.cmake
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CLUE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Src/CLUE/CMakeFiles/CLUE.dir/build: Src/CLUE/libCLUE.a
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/build

Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Histogram/Histogram64.o.requires
Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Core/Common.o.requires
Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Core/Error.o.requires
Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Core/Context.o.requires
Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Core/Program.o.requires
Src/CLUE/CMakeFiles/CLUE.dir/requires: Src/CLUE/CMakeFiles/CLUE.dir/Core/Memory.o.requires
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/requires

Src/CLUE/CMakeFiles/CLUE.dir/clean:
	cd /home/scttbrn/Documents/CLUE/Build/Src/CLUE && $(CMAKE_COMMAND) -P CMakeFiles/CLUE.dir/cmake_clean.cmake
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/clean

Src/CLUE/CMakeFiles/CLUE.dir/depend:
	cd /home/scttbrn/Documents/CLUE/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/scttbrn/Documents/CLUE /home/scttbrn/Documents/CLUE/Src/CLUE /home/scttbrn/Documents/CLUE/Build /home/scttbrn/Documents/CLUE/Build/Src/CLUE /home/scttbrn/Documents/CLUE/Build/Src/CLUE/CMakeFiles/CLUE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Src/CLUE/CMakeFiles/CLUE.dir/depend

