###########################################################
### Makefile for the SDCC/PIC14 Library
###
### Copyright (C) 2005 by Raphael Neider <rneider AT web.de>
###
### The library is currently maintained by
###	Raphael Neider <rneider AT web.de>
###
### This file may be distributed under the terms of the the
### GNU General Public License (GPL). See GPL for details.
###
### $Id: Makefile.in 4555 2007-01-03 21:19:58Z bernhardheld $
###

top_builddir = .
top_srcdir   = .


srcdir = .

include $(top_builddir)/Makefile.common

ifeq (:,$(findstring :,$(LD) $(AS) $(LIB)))

.PHONY : all

all % : 
	@echo "gputils not found -- PIC14 library not built!"

else

SUBDIRS	   = libsdcc libdev libm
builddir   = build
installdir = bin
export installdir

C_SRC = $(notdir $(wildcard $(srcdir)/*.c))
S_SRC = $(notdir $(wildcard $(srcdir)/*.S))
OBJS = $(C_SRC:.c=.o) $(S_SRC:.S=.o)

.PHONY : all clean clean-intermediate install

all : install

install : recurse

clean : recurse
	$(Q)-$(RMDIR) "$(top_builddir)/$(builddir)"

distclean: clean
	$(Q)-$(RM) config.cache config.log config.status Makefile Makefile.common
	$(Q)-$(RMDIR) bin

clean-intermediate : recurse

include $(top_srcdir)/Makefile.rules

endif
