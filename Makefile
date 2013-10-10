#! /usr/bin/make -f 

bib:=ahb-pnw.bib
bib.source:=~/Google\ Drive/Mendeley\ Desktop/ahb-pnw.bib

# To add this precommit add to your .hg/hgrc file:
# [hooks]
# precommit = make precommit 
# show with with `hg showconfig hooks`
precommit: ${bib}
	echo "Ready to commit"

#${bib}:${bib.source}
#	cp "$<" $@

//iperender:=/Applications/Ipe.app//Contents/Resources/local/bin/iperender
iperender:=iperender
res:=175
# PATH=$PATH:/usr/texbin
pngs:=$(patsubst %,img/tree_pics.%.png,1 2 3 4 5 6 7 8 9 10)
pdfs:=$(patsubst %,img/tree_pics.%.pdf,1 2 3 4 5 6 7 8 9 10)
tree_pics:${pngs}  ${pdfs}

${pngs}:img/tree_pics.%.png:tree_pics.ipe
	${iperender} -png -page $* -resolution ${res} tree_pics.ipe img/tree_pics.${*}.png

${pdfs}:img/tree_pics.%.pdf:tree_pics.ipe
	${iperender} -pdf -page $* tree_pics.ipe img/tree_pics_${*}.pdf