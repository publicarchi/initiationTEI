cd sources/
for f in 0*.xml; do echo $f; \
java -jar '/Library/Java/Extensions/SaxonHE9-5-1-6J/saxon9he.jar' -o:../diapos/`basename $f .tei.xml`.html $f -xsl:../xsl/tei2md.xsl; done
cd ../diapos; sh bodgeIt
