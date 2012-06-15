#! /usr/bin/make -f 

bib:=ahb-pnw.bib
bib.source:=~/Google\ Drive/Mendeley\ Desktop/ahb-pnw.bib

# To add this precommit add to your .hg/hgrc file:
# [hooks]
# precommit = make precommit 
# show with with `hg showconfig hooks`
precommit: ${bib}
	echo "Ready to commit"

${bib}:${bib.source}
	cp "$<" $@

