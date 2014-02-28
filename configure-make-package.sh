#!/bin/bash
set -v
cd rdesktop-1.8.1
CFLAGS=-DSCARD_CTL_CODE= ./configure --enable-smartcard --disable-credssp
make
tar czf ../rdesktop-smartcard.tar.gz rdesktop keymaps
