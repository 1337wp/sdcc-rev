#
#
#

VERSION         = 2.8.0
VERSIONHI       = 2
VERSIONLO       = 8
VERSIONP        = 0

SHELL           = /bin/sh
CPP             = gcc -E
INSTALL         = /usr/bin/install -c
CP              = cp

top_builddir    = ../..
top_srcdir      = ../..

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
infodir         = ${datarootdir}/info

srcdir          = .

include_dir_suffix = sdcc/include

sdcc_includedir    = $(DESTDIR)$(datadir)/$(include_dir_suffix)

CPPFLAGS        =  -I$(top_builddir)


# Compiling entire program or any subproject
# ------------------------------------------
all:

# Compiling and installing everything and running test
# ----------------------------------------------------
install: all installdirs
	$(CP) -r $(srcdir)/asm $(srcdir)/*.h $(sdcc_includedir)
	if [ "`grep mcs51 $(top_builddir)/ports.build`" = mcs51 ]; then \
		$(CP) $(srcdir)/mcs51/*.h $(sdcc_includedir)/mcs51 ; \
	fi
	if [ "`grep '^pic$$' $(top_builddir)/ports.build`" = pic ]; then \
		$(CP) $(srcdir)/pic/*.h   $(sdcc_includedir)/pic ; \
		$(CP) $(srcdir)/pic/*.inc $(sdcc_includedir)/pic ; \
		$(CP) $(srcdir)/pic/*.txt $(sdcc_includedir)/pic ; \
		$(CP) $(srcdir)/pic/pic14devices.txt $(sdcc_includedir)/pic ; \
	fi
	if [ "`grep pic16 $(top_builddir)/ports.build`" = pic16 ]; then \
		$(CP) $(srcdir)/pic16/*.h $(sdcc_includedir)/pic16 ; \
	fi
	if [ "`grep z80 $(top_builddir)/ports.build`" = z80 ]; then \
		$(CP) $(srcdir)/z80/*.h $(sdcc_includedir)/z80 ; \
	fi
	if [ "`grep hc08 $(top_builddir)/ports.build`" = hc08 ]; then \
		$(CP) $(srcdir)/hc08/*.h $(sdcc_includedir)/hc08 ; \
	fi
	rm -rf `find $(sdcc_includedir) -type d -name '.svn'`
	# some files in CVS are executable :-(
	find $(sdcc_includedir) -type f -exec chmod 644 {} \;


# Deleting all the installed files
# --------------------------------
uninstall:
	rm -rf $(sdcc_includedir)


# Performing self-test
# --------------------
check:


# Performing installation test
# ----------------------------
installcheck:


# Creating installation directories
# ---------------------------------
installdirs:
	[ -d $(sdcc_includedir) ] || mkdir -p $(sdcc_includedir)
	[ -d $(sdcc_includedir)/mcs51 ] || mkdir -p $(sdcc_includedir)/mcs51
	[ -d $(sdcc_includedir)/pic ] || mkdir -p $(sdcc_includedir)/pic
	[ -d $(sdcc_includedir)/pic16 ] || mkdir -p $(sdcc_includedir)/pic16
	[ -d $(sdcc_includedir)/z80 ] || mkdir -p $(sdcc_includedir)/z80
	[ -d $(sdcc_includedir)/hc08 ] || mkdir -p $(sdcc_includedir)/hc08


# Creating dependencies
# ---------------------
dep: #Makefile.dep

#Makefile.dep:
#	$(CPP) $(CPPFLAGS) $(M_OR_MM) *.c >main.dep

#-include Makefile.dep
include $(srcdir)/clean.mk

# My rules
# --------


# Remaking configuration
# ----------------------
checkconf:
	@if [ -f $(top_builddir)/devel ]; then\
	  $(MAKE) -f $(srcdir)/conf.mk srcdir="$(srcdir)" top_builddir="$(top_builddir)" \
	  freshconf;\
	fi

# End of main_in.mk/main.mk

