
srcdir       = .
top_builddir = ../..
top_srcdir   = ../..

include $(top_builddir)/Makefile.common

OBJDIR = obj$(EXT)

UTILLIB = $(srcdir)/../../support/Util
UTILSRC = dbuf.c dbuf_string.c
UTILLIBOBJS = $(UTILSRC:%.c=$(OBJDIR)/%.o)

ASXXLIB = $(srcdir)/../asxxsrc
ASXXLIBSRC = strcmpi.c assym.c aslex.c asnoice.c
ASXXLIBOBJS = $(ASXXLIBSRC:%.c=$(OBJDIR)/%.o)

SRC = asmain.c assubr.c \
      asexpr.c asdata.c aslist.c asout.c \
      z80ext.c z80pst.c z80mch.c z80adr.c
OBJS = $(SRC:%.c=$(OBJDIR)/%.o)

ASSOURCES = $(SRC) $(ASXXLIBSRC:%.c=$(ASXXLIB)/%.c) $(UTILSRC:%.c=$(UTILLIB)/%.c)

ASOBJECTS = $(OBJS) $(ASXXLIBOBJS) $(UTILLIBOBJS)

BINS = $(BUILDDIR)/as$(EXT)$(EXEEXT)

CFLAGS += $(CPPFLAGS) $(OPTS) -I. -I$(srcdir)/../../support/Util -DINDEXLIB -DMLH_MAP -DUNIX -DSDK
CFLAGS += -funsigned-char

LDFLAGS =  -lm $(EXTRALIBS)

all: dep $(BINS)

dep: Makefile.dep

Makefile.dep: $(ASSOURCES) $(srcdir)/*.h
	$(CPP) $(CPPFLAGS) $(M_OR_MM) $(filter %.c,$^) > Makefile.dep

ifeq "$(findstring $(MAKECMDGOALS),uninstall check installcheck installdirs \
                                   clean distclean mostlyclean realclean)" ""
  -include Makefile.dep
endif

# We need a '.stamp'-file in $(OBJDIR), because the time stamp
# of $(OBJDIR) itself is always updated, when a file in $(OBJDIR)
# is updated. A rule like
#	$(OBJDIR)/anyfile: $(OBJDIR)
# will always force a remake (at least on Linux ext2).

$(OBJDIR)/.stamp:
	mkdir -p $(OBJDIR)
	touch $(OBJDIR)/.stamp

$(BINS): $(ASOBJECTS)
	$(CC) -o $(BINS) $(ASOBJECTS) $(LDFLAGS)

$(OBJDIR)/%.o: %.c $(OBJDIR)/.stamp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJDIR)/%.o: $(ASXXLIB)/%.c $(OBJDIR)/.stamp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJDIR)/%.o: $(UTILLIB)/%.c $(OBJDIR)/.stamp
	$(CC) -c $(CFLAGS) -o $@ $<

_as-z80:
	$(MAKE) EXT=-z80$(E)

_as-gbz80:
	$(MAKE) EXT=-gbz80$(E) OPTS=-DGAMEBOY

include $(srcdir)/clean.mk
