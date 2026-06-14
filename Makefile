.PHONY: install uninstall

LATEX_TEXMF_DIR := $(HOME)/texmf/tex/latex
LATEX_TOOLBOX_LINK := $(LATEX_TEXMF_DIR)/toolbox-latex
LATEX_TOOLBOX_SOURCE := $(HOME)/.latex/common

include $(HOME)/.make/git.mk

install:
	mkdir -p $(LATEX_TEXMF_DIR)
	rm -f $(LATEX_TOOLBOX_LINK)
	ln -s $(LATEX_TOOLBOX_SOURCE) $(LATEX_TOOLBOX_LINK)

uninstall:
	rm -f $(LATEX_TOOLBOX_LINK)
