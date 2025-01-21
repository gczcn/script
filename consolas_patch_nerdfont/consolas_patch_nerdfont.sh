mkdir patcher
mkdir output
wget --directory-prefix=patcher https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
cd patcher
unzip FontPatcher.zip
fontforge --script font-patcher ../original/consola.ttf --outputdir ../output --complete --quiet
fontforge --script font-patcher ../original/consola.ttf --outputdir ../output --complete --mono --quiet
fontforge --script font-patcher ../original/consola.ttf --outputdir ../output --complete --variable-width-glyphs --quiet
fontforge --script font-patcher ../original/consolai.ttf --outputdir ../output --complete --quiet
fontforge --script font-patcher ../original/consolai.ttf --outputdir ../output --complete --mono --quiet
fontforge --script font-patcher ../original/consolai.ttf --outputdir ../output --complete --variable-width-glyphs --quiet
fontforge --script font-patcher ../original/consolab.ttf --outputdir ../output --complete --quiet
fontforge --script font-patcher ../original/consolab.ttf --outputdir ../output --complete --mono --quiet
fontforge --script font-patcher ../original/consolab.ttf --outputdir ../output --complete --variable-width-glyphs --quiet
fontforge --script font-patcher ../original/consolaz.ttf --outputdir ../output --complete --quiet
fontforge --script font-patcher ../original/consolaz.ttf --outputdir ../output --complete --mono --quiet
fontforge --script font-patcher ../original/consolaz.ttf --outputdir ../output --complete --variable-width-glyphs --quiet
