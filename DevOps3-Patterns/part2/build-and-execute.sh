#!/bin/bash

echo "...Cloning main repo..."
git clone https://github.com/akhtyamovpavel/PatternsCollection.git
cd PatternsCollection

echo "...Adding config.ini..."
rm Decorator/cpp-source/configs/config.ini
cp ../config.ini Decorator/cpp-source/configs/config.ini

echo "...Modifying EmailNotifiers.cpp..."
rm Decorator/cpp-source/notifier/EmailNotifiers.cpp
cp ../EmailNotifiers.cpp Decorator/cpp-source/notifiers/EmailNotifiers.cpp

echo "...Modifying CMakeLists to have only Decorator project..."
rm CMakeLists.txt
cp ../CMakeLists.txt CMakeLists.txt

echo "...Building project..."
mkdir build
cd build

cmake ..

echo "...Changing SendMail library because of bug..."
rm Decorator/cpp-source/vmime_project-prefix/src/vmime_project/CMakeLists.txt
cp ../../VMIME_CMakeLists.txt Decorator/cpp-source/vmime_project-prefix/src/vmime_project/CMakeLists.txt

echo "...Compiling..."
make

echo "...Succes; executing..."
cd ../bin
./Decorator
