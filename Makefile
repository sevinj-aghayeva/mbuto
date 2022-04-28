# mbuto: Minimal Builder Using Terse Options
#
# SPDX-License-Identifier: AGPL-3.0-or-later
#
# Copyright (c) 2022 Red Hat GmbH
# Author: Stefano Brivio <sbrivio@redhat.com>

all:

prefix ?= /usr/local

install: mbuto
	mkdir -p $(DESTDIR)$(prefix)/bin $(DESTDIR)$(prefix)/share/man/man1
	cp -d mbuto $(DESTDIR)$(prefix)/bin
	cp -d mbuto.1 $(DESTDIR)$(prefix)/share/man/man1

uninstall:
	-${RM} $(DESTDIR)$(prefix)/bin/mbuto
	-${RM} $(DESTDIR)$(prefix)/share/man/man1/mbuto.1
