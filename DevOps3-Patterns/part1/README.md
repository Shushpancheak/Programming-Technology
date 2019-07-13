# First part: compiling a project for Rasberry Pi.

## Steps to compile:
* Download Boost, OpenSSL, curl libraries
* Clone Rasberry Pi toolchain to this folder: `git clone https://github.com/raspberrypi/tools`
* Add required rights to execute scripts: `chmod +x build.sh execute.sh`
* Run build: `./build.sh`
* To run binaries after compile, run `./execute.sh` on rpi.

## Steps to accomplish the task:
The only issue was with finding gcc and g++ compilers by cmake. I needed to change CMakeLists.txt so that it could find the right cross-compilers for rpi.

