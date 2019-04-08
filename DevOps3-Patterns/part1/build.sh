#!/bin/bash
# MAke sure you have tools folder here with toolchain for rpi

echo "...Cloning main repo..."
git clone https://github.com/akhtyamovpavel/PatternsCollection
cd PatternsCollection

# Modifying existing CMakeLists
echo "...Modifying existing CMakeLists..."
rm CMakeLists.txt
cp ../CMakeLists.txt CMakeLists.txt

mkdir build
cd build

echo "...Building project on pi..."
cmake .. -DON_PI=ON -DSYSROOT=$(pwd)/tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot/

echo "...Compiling project..."
make

cd ../..
echo "...Zipping folders..."
zip -q -r Patterns.zip PatternsCollection && echo "...Succes!..." || echo "...Failure..."
