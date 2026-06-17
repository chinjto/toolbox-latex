.PHONY: install uninstall

LATEX_TEXMF_DIR := $(HOME)/texmf/tex/latex
TOOLBOX_PACKAGES_DIR := $(HOME)/.latex/packages

LATEX_NAMESPACE := chinjto

LATEX_TOOLBOX_LINK := $(LATEX_TEXMF_DIR)/$(LATEX_NAMESPACE)
LATEX_TOOLBOX_SOURCE := $(TOOLBOX_PACKAGES_DIR)/$(LATEX_NAMESPACE)

DEPLOY_SCRIPT = @echo "Undefined deploy script for this project."

include $(HOME)/.make/git.mk

install:
	mkdir -p $(LATEX_TEXMF_DIR)
	rm -f $(LATEX_TOOLBOX_LINK)
	ln -s $(LATEX_TOOLBOX_SOURCE) $(LATEX_TOOLBOX_LINK)

uninstall:
	rm -f $(LATEX_TOOLBOX_LINK)

build:
	@echo "Undefined goal 'build' for this project."

version:
	@echo "Undefined goal 'version' for this project."
