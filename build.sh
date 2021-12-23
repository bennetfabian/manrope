#!/bin/sh
set -e

echo "Generating static fonts"
gftools builder sources/config.yaml

echo "Generating Italic static TTFs"
fontmake -g sources/Manrope-Italic.glyphs -o ttf --round-instances -a --keep-direction -i --output-dir ./fonts/TTF/
echo "Made Italic static TTFs"

echo "Generating Italic static OTFs"
fontmake -g sources/Manrope-Italic.glyphs -o otf --round-instances -a --keep-direction -i --output-dir ./fonts/OTF/
echo "Made Italic static OTFs"

echo "Generating Italic VFs"
fontmake -g sources/Manrope-Italic.glyphs -o variable --output-path ./fonts/variable/Manrope-Italic\[wght\].ttf
echo "Made Italic VF"

cd ./fonts/variable

echo "adding dummy dsig"
gftools fix-dsig Manrope\[wght\].ttf --autofix
gftools fix-dsig Manrope-Italic\[wght\].ttf --autofix
echo "dummy dsig added"

cd ../..

echo "Post processing"
vfs=$(ls ./fonts/variable/*.ttf)
for vf in $vfs
do
	gftools fix-dsig -f $vf;
	gftools fix-nonhinting $vf "$vf.fix";
	mv "$vf.fix" $vf;
	ttx -f -x "MVAR" $vf; # Drop MVAR. Table has issue in DW
	rtrip=$(basename -s .ttf $vf)
	new_file=./fonts/variable/$rtrip.ttx;
	rm $vf;
	ttx $new_file
	rm ./fonts/variable/*.ttx
done
rm ./fonts/variable/*backup*.ttf


for ttf in fonts/ttf/*.ttf
do
	gftools fix-dsig -f $ttf;
	gftools fix-nonhinting $ttf "$ttf.fix";
	mv "$ttf.fix" $ttf;
done

rm fonts/ttf/*backup*.ttf

for otf in fonts/otf/*.otf
do
	gftools fix-dsig -f $otf;
done


rm -fr ./master_ufo/ ./instance_ufo/

mkdir -p ./fonts/Webfonts
mkdir -p ./fonts/Webfonts/Static
mkdir -p ./fonts/Webfonts/Variable

for ttf in fonts/ttf/*.ttf
do
	echo $ttf
	woff2_compress $ttf
	mv fonts/ttf/$(basename $ttf .ttf).woff2 fonts/Webfonts/Static/$(basename $ttf .ttf).woff2
	sfnt2woff-zopfli $ttf
	mv fonts/ttf/$(basename $ttf .ttf).woff fonts/Webfonts/Static/$(basename $ttf .ttf).woff
done

for vf in fonts/variable/*.ttf
do
	woff2_compress $vf
	mv fonts/variable/$(basename $vf .ttf).woff2 fonts/Webfonts/Variable/$(basename $vf .ttf).woff2
	sfnt2woff-zopfli $vf
	mv fonts/variable/$(basename $vf .ttf).woff fonts/Webfonts/Variable/$(basename $vf .ttf).woff
done

mv -f ./fonts/variable ./fonts/Variable
mv -f ./fonts/ttf ./fonts/TTF
mv -f ./fonts/otf ./fonts/OTF

echo "Build complete"

otfsPath=$(ls ./fonts/OTF/*.otf)
otfs=""
for otf in $otfsPath
do
	otfs+="$otf "
done
echo $otfs
tfsPath=$(ls ./fonts/TTF/*.ttf)
ttfs=""
for ttf in $ttfsPath
do
	ttfs+="$ttf "
done
fontbakery check-universal --ghmarkdown ./fonts/checks.md $otfs $ttfs ./fonts/Variable/Manrope\[wght\].ttf ./fonts/Variable/Manrope-Italic\[wght\].ttf