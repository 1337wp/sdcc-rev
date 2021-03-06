#
#
#

VERSION         = 2.8.0
VERSIONHI       = 2
VERSIONLO       = 8
VERSIONP        = 0

SHELL           = /bin/sh
CC              = gcc
CPP             = gcc -E
INSTALL         = /usr/bin/install -c
STRIP           = strip

top_builddir    = ../..
top_srcdir      = ../..

srcdir          = .
prefix          = /usr/local
exec_prefix     = ${prefix}
bindir          = ${exec_prefix}/bin
libdir          = ${exec_prefix}/lib
datadir         = ${datarootdir}
datarootdir     = ${prefix}/share
includedir      = ${prefix}/include
mandir          = ${datarootdir}/man
man1dir         = $(mandir)/man1
man2dir         = $(mandir)/man2
infodir         = @info@

EXEEXT          = 



CPPFLAGS        =  -I. -I$(srcdir)
CFLAGS          = -pipe -ggdb -g -O2 -Wall -DINDEXLIB -I. -I$(srcdir) -I$(srcdir)/../../support/Util
M_OR_MM         = -MM
LDFLAGS         = 

OBJDIR = obj

UTILLIB = $(srcdir)/../../support/Util
UTILSRC = dbuf.c dbuf_string.c
UTILLIBOBJS = $(UTILSRC:%.c=$(OBJDIR)/%.o)

ASXXLIB = $(srcdir)/../asxxsrc
ASXXLIBSRC = strcmpi.c assym.c aslex.c asnoice.c
ASXXLIBOBJS = $(ASXXLIBSRC:%.c=$(OBJDIR)/%.o)

SRC = asmain.c assubr.c \
      asexpr.c asdata.c aslist.c asout.c \
      i51ext.c i51pst.c i51mch.c i51adr.c
OBJS = $(SRC:%.c=$(OBJDIR)/%.o)

ASSOURCES = $(SRC) $(ASXXLIBSRC:%.c=$(ASXXLIB)/%.c) $(UTILSRC:%.c=$(UTILLIB)/%.c)

ASOBJECTS = $(OBJS) $(ASXXLIBOBJS) $(UTILLIBOBJS)

ASX8051 = $(top_builddir)/bin/asx8051$(EXEEXT)

transform       = s,x,x,

# Compiling entire program or any subproject
# ------------------------------------------
all: checkconf $(ASX8051)

$(ASX8051): $(ASOBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(ASOBJECTS)

# Compiling and installing everything and running test
# ----------------------------------------------------
install: all installdirs
	$(INSTALL) $(ASX8051) `echo $(DESTDIR)$(bindir)/asx8051$(EXEEXT)|sed '$(transform)'`
	$(STRIP) `echo $(DESTDIR)$(bindir)/asx8051$(EXEEXT)|sed '$(transform)'`

# Deleting all the installed files
# --------------------------------
uninstall:
	rm -f $(DESTDIR)$(bindir)/asx8051$(EXEEXT)


# Performing self-test
# --------------------
check:


# Performing installation test
# ----------------------------
installcheck:


# Creating installation directories
# ---------------------------------
installdirs:
	$(INSTALL) -d $(DESTDIR)$(bindir)


# Creating dependencies
# ---------------------
dep: Makefile.dep

Makefile.dep: $(ASSOURCES) $(srcdir)/*.h
	$(CPP) $(CPPFLAGS) $(M_OR_MM) $(filter %.c,$^) >Makefile.dep

ifeq "$(findstring $(MAKECMDGOALS),uninstall check installcheck installdirs \
                                   clean distclean mostlyclean realclean)" ""
  -include Makefile.dep
endif
include $(srcdir)/clean.mk

# My rules
# --------
$(OBJDIR)/.stamp:
	mkdir -p $(OBJDIR)
	touch $(OBJDIR)/.stamp

$(OBJDIR)/%.o: %.c $(OBJDIR)/.stamp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJDIR)/%.o: $(ASXXLIB)/%.c $(OBJDIR)/.stamp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJDIR)/%.o: $(UTILLIB)/%.c $(OBJDIR)/.stamp
	$(CC) -c $(CFLAGS) -o $@ $<


# Remaking configuration
# ----------------------
checkconf:
	@if [ -f $(top_builddir)/devel ]; then\
          $(MAKE) -f conf.mk srcdir="$(srcdir)" top_builddir="$(top_builddir)" freshconf;\
        fi

# End of Makefile
