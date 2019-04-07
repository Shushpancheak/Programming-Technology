#!/bin/bash
# MAke sure you have tools folder here with toolchain for rpi

echo "...Cloning main repo..."
git clone https://github.com/akhtyamovpavel/PatternsCollection
cd PatternsCollection

# Modifying existing CMakeLists
echo "...Modifying existing CMakeLists..."
rm CMakeLists.txt
cp ../CMakeLists.txt CMakeLists.txt
echo "...Modfying some files to match 14 C++ standart..."
rm AbstractFactory/cpp-source/factories/RoomFactory.cpp
cp ../RoomFactory.cpp AbstractFactory/cpp-source/factories/RoomFactory.cpp
rm AbstractFactory/cpp-source/serializers/RoomSerializer.cpp
cp ../RoomSerializer.cpp AbstractFactory/cpp-source/serializers/RoomSerializer.cpp

mkdir build
cd build

echo "...Building project on pi..."
cmake .. -DON_PI=ON

echo "...Compiling project..."
make

cd ../..
echo "...Zipping folders..."
zip -q -r Patterns.zip PatternsCollection && echo "...Succes!..." || echo "...Failure..."
