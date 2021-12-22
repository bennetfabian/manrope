#!/bin/sh

set -e


echo "Generating Static fonts"

mkdir -p ./fonts/
mkdir -p ./fonts/OTF/
mkdir -p ./fonts/TTF/
echo "Made font directories"
 
echo "Generating static TTFs"
#fontmake -g source/manrope.glyphs -o ttf --round-instances -a --keep-direction -i --output-dir ./fonts/TTF/
#fontmake -g source/manrope-italic.glyphs -o ttf --round-instances -a --keep-direction -i --output-dir ./fonts/TTF/
echo "Made static TTFs"

echo "Generating static OTFs"
#fontmake -g source/manrope.glyphs -o otf --round-instances -a --keep-direction -i --output-dir ./fonts/OTF/
#fontmake -g source/manrope-italic.glyphs -o otf --round-instances -a --keep-direction -i --output-dir ./fonts/OTF/
echo "Made static OTFs"

echo "Generating VFs"
fontmake -g source/manrope.glyphs -o variable --output-path ./fonts/Manrope\[wght\].ttf
fontmake -g source/manrope-italic.glyphs -o variable --output-path ./fonts/Manrope-Italic\[wght\].ttf
echo "Made VF"

cd ./fonts/

echo "adding dummy dsig"
gftools fix-dsig Manrope\[wght\].ttf --autofix
gftools fix-dsig Manrope-italic\[wght\].ttf --autofix
echo "dummy dsig added"

cd ..

echo "Post processing"

vfs=$(ls ./fonts/*.ttf)
for vf in $vfs
do
	gftools fix-dsig -f $vf;
	gftools fix-nonhinting $vf "$vf.fix";
	mv "$vf.fix" $vf;
	ttx -f -x "MVAR" $vf; # Drop MVAR. Table has issue in DW
	rtrip=$(basename -s .ttf $vf)
	new_file=./fonts/$rtrip.ttx;
	rm $vf;
	ttx $new_file
	rm ./fonts/*.ttx
done
rm ./fonts/*backup*.ttf

otfsPath=$(ls ./fonts/OTF/*.otf)
otfs=""
for otf in $otfsPath
do
	otfs+="$otf "
done

ttfsPath=$(ls ./fonts/TTF/*.ttf)
ttfs=""
for ttf in $ttfsPath
do
	ttfs+="$ttf "
done
fontbakery check-universal --ghmarkdown ./fonts/checks.md $otfs $ttfs ./fonts/Manrope\[wght\].ttf ./fonts/Manrope-Italic\[wght\].ttf

echo "build complete"
