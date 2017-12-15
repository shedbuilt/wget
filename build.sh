#!/bin/bash
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --with-ssl=openssl
make -j $SHED_NUMJOBS
make DESTDIR=${SHED_FAKEROOT} install
