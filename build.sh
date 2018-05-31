#!/bin/bash
# Configure
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --with-ssl=openssl &&
# Build and Install
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install
