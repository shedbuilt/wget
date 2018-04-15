#!/bin/bash
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --with-ssl=openssl
make -j $SHED_NUM_JOBS
make DESTDIR=${SHED_FAKE_ROOT} install
