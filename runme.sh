#!/bin/bash

CMAKE_OPTIONS="-DKB_LAYOUT_DIR='\"/usr/local/src/qtermwidget/lib/kb-layouts\"' -DCOLORSCHEMES_DIR='\"/usr/local/src/qtermwidget/lib/color-schemes\"'"

rm -Rf build
mkdir build

cd build
cmake -DCMAKE_PREFIX_PATH=/opt/Qt/5.6/gcc_64/lib/cmake D -DCMAKE_CXX_FLAGS="${CMAKE_OPTIONS}" .. && {
	make -j8
}
cd ..
