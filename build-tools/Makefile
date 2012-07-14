TREEDIR=Tree-Builder-0.1

all: Tree-Builder

Tree-Builder:
	( cd $(TREEDIR); perl Makefile.PL )
	$(MAKE) -C $(TREEDIR)
	$(MAKE) -C $(TREEDIR) test

.PHONY: Tree-Builder

# vim: noet
