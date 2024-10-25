#!/bin/bash

cd `dirname $0`

rm -r downloads

echo '### JetBrainsMono Nerd Font [ +ss01 ] ###'
wget --directory-prefix=downloads/origin/ https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip downloads/origin/JetBrainsMono.zip -d downloads/origin
echo 'remove:'; rm -v downloads/origin/JetBrainsMono.zip downloads/origin/OFL.txt downloads/origin/README.md

for file in `ls downloads/origin/ | grep -v NL`; do
  echo 'downloads/origin/'$file' >> downloads/'$file
  pyftfeatfreeze -f 'ss01' -R 'JetBrainsMono/JetBrainsMonoMod' downloads/origin/$file downloads/${file/JetBrainsMono/JetBrainsMonoMod}
done

rm -r downloads/origin
