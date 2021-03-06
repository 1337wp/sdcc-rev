
srcdir = .

LYX        = 
LATEX2HTML = 
PDFLATEX   = 
MAKEINDEX  = 
PDFOPT     = 

include ../Makefile.common

MANUAL = sdccman
TSS = test_suite_spec
CDB = cdbfileformat

all: $(MANUAL).pdf $(MANUAL).html/index.html $(MANUAL).txt \
	$(TSS).pdf $(TSS).html/index.html $(TSS).txt \
	$(CDB).pdf $(CDB).html/index.html $(CDB).txt

install:
	$(INSTALL) -d $(DESTDIR)$(docdir)
	cp -rf $(srcdir)/*.txt $(srcdir)/z80 $(srcdir)/avr $(DESTDIR)$(docdir)
	txtfiles=`echo *.txt | grep -v '\*\.txt' || true`
	if [    $(txtfiles)               ]; then cp     $(txtfiles)    $(DESTDIR)$(docdir); fi
	if [ -f $(MANUAL).html/index.html ]; then cp -rf $(MANUAL).html $(DESTDIR)$(docdir); fi
	if [ -f $(TSS).html/index.html    ]; then cp -rf $(TSS).html    $(DESTDIR)$(docdir); fi
	if [ -f $(CDB).html/index.html    ]; then cp -rf $(CDB).html    $(DESTDIR)$(docdir); fi
	if [ -f $(MANUAL).pdf             ]; then cp -rf $(MANUAL).pdf  $(DESTDIR)$(docdir); fi
	if [ -f $(TSS).pdf                ]; then cp -rf $(TSS).pdf     $(DESTDIR)$(docdir); fi
	if [ -f $(CDB).pdf                ]; then cp -rf $(CDB).pdf     $(DESTDIR)$(docdir); fi
	rm -rf `find $(DESTDIR)$(docdir) -name .svn -type d`
	rm -f $(DESTDIR)$(docdir)/*/images.*

uninstall:
	rm -rf $(DESTDIR)$(docdir)

$(MANUAL).html/index.html: $(MANUAL).tex ;#$(MANUAL).ind $(MANUAL).glo
	mkdir -p $(dir $@)
	@# fixes $(LATEX2HTML) problems with two consecutive dashes for long-options: --stack-auto
	@# fixes $(LATEX2HTML) problems with \tabularnewline
	mv $< $(basename $<).orig.tex
	sed -e 's,-\\/-,-\\/-\\/-,g' \
	    -e 's,\\tabularnewline$$,\\\\,g' < $(basename $<).orig.tex > $<
	touch $< -r $(basename $<).orig.tex # avoid warning that *.tex is newer than *.aux
	-$(LATEX2HTML) -split 5 -show_section_numbers -local_icons -info "" -dir $(MANUAL).html $(MANUAL)
	mv $(basename $<).orig.tex $<
	rm -f $(MANUAL).html/WARNINGS $(MANUAL).html/labels.pl

$(TSS).html/index.html: $(TSS).tex
	mkdir -p $(dir $@)
	@# fixes $(LATEX2HTML) problems with two consecutive dashes for long-options: --stack-auto
	@# fixes $(LATEX2HTML) problems with \tabularnewline
	mv $< $(basename $<).orig.tex
	sed -e 's,-\\/-,-\\/-\\/-,g' \
	    -e 's,\\tabularnewline$$,\\\\,g' < $(basename $<).orig.tex > $<
	touch $< -r $(basename $<).orig.tex # avoid warning that *.tex is newer than *.aux
	-$(LATEX2HTML) -split 0 -local_icons -info "" -dir $(TSS).html $(TSS)
	mv $(basename $<).orig.tex $<
	rm -f $(TSS).html/WARNINGS $(TSS).html/labels.pl

$(CDB).html/index.html: $(CDB).tex
	mkdir -p $(dir $@)
	@# fixes $(LATEX2HTML) problems with two consecutive dashes for long-options: --stack-auto
	@# fixes $(LATEX2HTML) problems with \tabularnewline
	mv $< $(basename $<).orig.tex
	sed -e 's,-\\/-,-\\/-\\/-,g' \
	    -e 's,\\tabularnewline$$,\\\\,g' < $(basename $<).orig.tex > $<
	touch $< -r $(basename $<).orig.tex # avoid warning that *.tex is newer than *.aux
	-$(LATEX2HTML) -split 0 -show_section_numbers -local_icons -info "" -dir $(CDB).html $(CDB)
	mv $(basename $<).orig.tex $<
	rm -f $(CDB).html/WARNINGS $(CDB).html/labels.pl

%.txt: %.lyx
	@# $(LYX) will export the file in the directory of the $(LYX) file
	@# if VPATH is used the $(LYX) file is copied first
	if [ "$(srcdir)" != "." ]; then \
	  cp $< . ; \
	  $(LYX) -e text $(notdir $<) ; \
	  rm $(notdir $<) ; \
	else \
	  $(LYX) -e text $< ; \
	fi

#%.pdf: %.tex %.dvi %.ind
#	$(DVIPDF) $*
## pdflatex creates documents for acrobat reader >= 5.0	
##	which $(PDFLATEX) > /dev/null && $(PDFLATEX) $* || $(DVIPDF) $*

#%.ps:  %.pdf
#	$(DVIPS) $*

#%.dvi: %.tex
#	$(LATEX) $<
#	@# rerun to in include aux
#	$(LATEX) $<

%.tex: %.lyx
	if [ "$(srcdir)" != "." ] ; then \
	  cp $< . ; \
	  $(LYX) -e latex $(notdir $<) ; \
	  rm $(notdir $<) ; \
	else \
	  $(LYX) -e latex $< ; \
	fi

#%.ind: %.dvi
#	$(LATEX) $*
#	# is there an index?
#	if [ -f $*.idx ] ; then \
#	  $(MAKEINDEX) $*; \
#	  $(LATEX) $*; \
#	  $(LATEX) $*; \
#	fi
##	  -$(MAKEINDEX) -s l2hidx.ist $*; \

#%.glo: %.dvi
#	# the glossary, not implemented yet
#	# $(MAKEINDEX) -s l2hglo.ist -o $@ $<

%.pdf: %.tex
	$(PDFLATEX) $*
	-$(MAKEINDEX) $*
	$(PDFLATEX) $*
	-$(MAKEINDEX) $*
	$(PDFLATEX) $*
	$(PDFOPT) $*.pdf tmp.pdf
	rm $*.pdf
	mv tmp.pdf $*.pdf

archive: all
	rm -rf sdcc-doc sdcc-doc.tar.bz2
	mkdir sdcc-doc
	rsync -rCt avr z80 *.pdf *.txt $(srcdir)/*.txt sdcc-doc

	for doc in $(MANUAL) $(TSS) $(CDB); do \
	  rsync -Rt $$doc.html/*.html $$doc.html/*.png $$doc.html/*.css sdcc-doc/; \
	done

	mkdir sdcc-doc/as
	rsync -rCt $(top_srcdir)/as/doc/* sdcc-doc/as/

	mkdir sdcc-doc/ucsim
	cd $(top_srcdir)/sim/ucsim/doc; rsync *.html *.jpg *.gif *.fig ../../../doc/sdcc-doc/ucsim/

	tar -c sdcc-doc | bzip2 -9 > sdcc-doc.tar.bz2

include $(srcdir)/clean.mk
