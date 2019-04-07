# First part: compiling a project for Rasberry Pi.

## Steps to compile:
* Download Boost, OpenSSL, curl libraries
* Clone Rasberry Pi toolchain to this folder: `git clone https://github.com/raspberrypi/tools`
* Add required rights to execute scripts: `chmod +x build.sh execute.sh`
* Run build: `./build.sh`
* To run binaries after compile, run `./execute.sh` on rpi.

## Steps to accomplish the task:
I needed to change some files in repository, such as CMakeLists.txt and RoomSerializer.cpp. CMakeLists now has SYSROOT variable set and RoomSerializer.cpp now has only pre-C++17 standart features (otherwise it wouldn't compile with g++ 4.8 which is provided by toolchain).

