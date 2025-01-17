#!/bin/bash

cd `dirname $0`

rm -r downloads

echo '### JetBrainsMono Nerd Font [ +ss01 ] ###'
wget --directory-prefix=downloads/JetBrainsMono/origin/ https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip downloads/JetBrainsMono/origin/JetBrainsMono.zip -d downloads/JetBrainsMono/origin
echo 'remove:'; rm -v downloads/JetBrainsMono/origin/JetBrainsMono.zip downloads/JetBrainsMono/origin/OFL.txt downloads/JetBrainsMono/origin/README.md

for file in `ls downloads/JetBrainsMono/origin/ | grep -v NL`; do
  echo 'downloads/JetBrainsMono/origin/'$file' >> downloads/JetBrainsMono/'$file
  pyftfeatfreeze -f 'ss01' -R 'JetBrainsMono/JetBrainsMonoMod' downloads/JetBrainsMono/origin/$file downloads/JetBrainsMono/${file/JetBrainsMono/JetBrainsMonoMod}
done

echo '### BlexMono Nerd Font (IBM Plex Mono) [ +onum ] ###'
wget --directory-prefix=downloads/IBMPlexMono/origin/ https://github.com/ryanoasis/nerd-fonts/releases/latest/download/IBMPlexMono.zip
unzip downloads/IBMPlexMono/origin/IBMPlexMono.zip -d downloads/IBMPlexMono/origin
echo 'remove:'; rm -v downloads/IBMPlexMono/origin/IBMPlexMono.zip downloads/IBMPlexMono/origin/OFL.txt downloads/IBMPlexMono/origin/README.md

for file in `ls downloads/IBMPlexMono/origin/ | grep -v NL`; do
  echo 'downloads/IBMPlexMono/origin/'$file' >> downloads/IBMPlexMono'$file
  pyftfeatfreeze -f 'onum' -R 'BlexMono/BlexMonoMod' downloads/IBMPlexMono/origin/$file downloads/IBMPlexMono/${file/BlexMono/BlexMonoMod}
done

rm -r downloads/JetBrainsMono/origin
rm -r downloads/IBMPlexMono/origin
