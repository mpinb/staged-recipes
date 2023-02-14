#!/bin/sh

mkdir build_ && cd build_

cmake \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -DBUILD_SHARED_LIBS=ON \
  -DCMAKE_INSTALL_RPATH="${PREFIX}/lib" -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON -DCMAKE_MACOSX_RPATH=ON ..
make install -j${CPU_COUNT}
