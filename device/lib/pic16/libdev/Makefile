###########################################################
### Makefile for the GNU PIC Library
###
### Copyright (C) 2005 by Raphael Neider <rneider AT web.de>
###
### The GNU PIC Library was originally designed and
### implemented by
###	Vangelis Rokas <vrokas@otenet.gr>
###
### It is currently maintained by
###	Raphael Neider <rneider AT web.de>
###
### This file may be distributed under the terms of the the
### GNU General Public License (GPL). See COPYING for details.
###
### $Id: Makefile.in 4656 2007-02-25 21:57:27Z tecodev $
###

top_builddir = ..
top_srcdir   = ..
srcdir       = .


.NOTPARALLEL:

SUBDIRS = 
MKLIB	= device_libs
C_FILES = $(notdir $(wildcard $(srcdir)/*.c))
TARGETS = $(OBJS:.o=.lib)

# allow invoking make without arguments (otherwise
# [...]/devicelibs would be the default target)
suball : all

.PHONY : $(top_builddir)/$(builddir)/device_libs suball

$(top_builddir)/$(builddir)/device_libs :
	$(Q)+$(foreach dev,$(C_FILES:.c=),$(MAKE) $(top_builddir)/$(builddir)/$(dev).lib LIB_O=$(top_builddir)/$(builddir)/$(dev).o;)

include $(top_srcdir)/Makefile.subdir
