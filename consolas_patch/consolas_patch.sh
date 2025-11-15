cd `dirname $0`
rm -rf patcher output consolig
mkdir patcher
mkdir output
git clone https://github.com/ofolis/consolig.git
wget --directory-prefix=patcher https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
cd consolig
cp ../original/* input
python3 build.py
cd ..
unzip patcher/FontPatcher.zip -d patcher/
fontforge --script patcher/font-patcher consolig/build/Consolig-Regular.ttf --outputdir output --complete
fontforge --script patcher/font-patcher consolig/build/Consolig-Regular.ttf --outputdir output --complete --mono
fontforge --script patcher/font-patcher consolig/build/Consolig-Regular.ttf --outputdir output --complete --variable-width-glyphs
fontforge --script patcher/font-patcher consolig/build/Consolig-Italic.ttf --outputdir output --complete
fontforge --script patcher/font-patcher consolig/build/Consolig-Italic.ttf --outputdir output --complete --mono
fontforge --script patcher/font-patcher consolig/build/Consolig-Italic.ttf --outputdir output --complete --variable-width-glyphs
fontforge --script patcher/font-patcher consolig/build/Consolig-Bold.ttf --outputdir output --complete
fontforge --script patcher/font-patcher consolig/build/Consolig-Bold.ttf --outputdir output --complete --mono
fontforge --script patcher/font-patcher consolig/build/Consolig-Bold.ttf --outputdir output --complete --variable-width-glyphs
fontforge --script patcher/font-patcher consolig/build/Consolig-BoldItalic.ttf --outputdir output --complete
fontforge --script patcher/font-patcher consolig/build/Consolig-BoldItalic.ttf --outputdir output --complete --mono
fontforge --script patcher/font-patcher consolig/build/Consolig-BoldItalic.ttf --outputdir output --complete --variable-width-glyphs
fontforge --script patcher/font-patcher original/consola.ttf --outputdir output --complete
fontforge --script patcher/font-patcher original/consola.ttf --outputdir output --complete --mono
fontforge --script patcher/font-patcher original/consola.ttf --outputdir output --complete --variable-width-glyphs
fontforge --script patcher/font-patcher original/consolab.ttf --outputdir output --complete
fontforge --script patcher/font-patcher original/consolab.ttf --outputdir output --complete --mono
fontforge --script patcher/font-patcher original/consolab.ttf --outputdir output --complete --variable-width-glyphs
fontforge --script patcher/font-patcher original/consolai.ttf --outputdir output --complete
fontforge --script patcher/font-patcher original/consolai.ttf --outputdir output --complete --mono
fontforge --script patcher/font-patcher original/consolai.ttf --outputdir output --complete --variable-width-glyphs
fontforge --script patcher/font-patcher original/consolaz.ttf --outputdir output --complete
fontforge --script patcher/font-patcher original/consolaz.ttf --outputdir output --complete --mono
fontforge --script patcher/font-patcher original/consolaz.ttf --outputdir output --complete --variable-width-glyphs
