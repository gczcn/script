#!/usr/bin/env bash
# Dependencies: nodejs, ttfautohint, git, fontforge
rm -rf output patcher Iosevka_source_code
cd `dirname $0`
git clone --depth 1 https://github.com/be5invis/Iosevka.git Iosevka_source_code
mkdir output
mkdir output/TTF
mkdir output/TTF-Unhinted
mkdir patcher
wget --directory-prefix=patcher https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
unzip patcher/FontPatcher.zip -d patcher/
cp private-build-plans.toml Iosevka_source_code

# Build
cd Iosevka_source_code
npm install
npm run build -- ttf::IosevkaCustom
cd dist/IosevkaCustom

# Nerd font
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Bold.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-BoldItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Italic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Regular.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Bold.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-BoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Italic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Regular.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4

fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Bold.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-BoldItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Italic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Regular.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Bold.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-BoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Italic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Regular.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4

fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Bold.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-BoldItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Italic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaCustom-Regular.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Bold.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-BoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Italic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaCustom-Regular.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
