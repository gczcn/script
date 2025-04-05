#!/usr/bin/env bash
# Dependencies: nodejs, ttfautohint, git, fontforge
cd `dirname $0`
git clone --depth 1 https://github.com/be5invis/Iosevka.git Iosevka_source_code
mkdir output
mkdir output/TTF
mkdir output/TTF-Unhinted
mkdir patcher
wget --directory-prefix=patcher https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
unzip patcher/FontPatcher.zip -d patcher/
cp private-build-plans.toml Iosevka_source_code
cd Iosevka_source_code
npm install
npm run build -- ttf::IosevkaPlex
cd dist/IosevkaPlex
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Bold.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-BoldItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-BoldOblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBold.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBoldItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBoldOblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLight.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLightItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLightOblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Heavy.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-HeavyItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-HeavyOblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Italic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Light.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-LightItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-LightOblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Medium.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-MediumItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-MediumOblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Oblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Regular.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBold.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBoldItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBoldOblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Thin.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ThinItalic.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ThinOblique.ttf --outputdir ../../../output/TTF --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Bold.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-BoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-BoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBold.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLight.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLightItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLightOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Heavy.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-HeavyItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-HeavyOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Italic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Light.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-LightItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-LightOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Medium.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-MediumItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-MediumOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Oblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Regular.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBold.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Thin.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ThinItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ThinOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Bold.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-BoldItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-BoldOblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBold.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBoldItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBoldOblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLight.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLightItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLightOblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Heavy.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-HeavyItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-HeavyOblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Italic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Light.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-LightItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-LightOblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Medium.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-MediumItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-MediumOblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Oblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Regular.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBold.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBoldItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBoldOblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Thin.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ThinItalic.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ThinOblique.ttf --outputdir ../../../output/TTF --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Bold.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-BoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-BoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBold.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLight.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLightItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLightOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Heavy.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-HeavyItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-HeavyOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Italic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Light.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-LightItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-LightOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Medium.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-MediumItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-MediumOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Oblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Regular.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBold.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Thin.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ThinItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ThinOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --mono --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Bold.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-BoldItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-BoldOblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBold.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBoldItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraBoldOblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLight.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLightItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ExtraLightOblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Heavy.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-HeavyItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-HeavyOblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Italic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Light.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-LightItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-LightOblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Medium.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-MediumItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-MediumOblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Oblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Regular.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBold.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBoldItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-SemiBoldOblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-Thin.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ThinItalic.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF/IosevkaPlex-ThinOblique.ttf --outputdir ../../../output/TTF --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Bold.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-BoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-BoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBold.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraBoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLight.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLightItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ExtraLightOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Heavy.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-HeavyItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-HeavyOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Italic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Light.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-LightItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-LightOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Medium.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-MediumItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-MediumOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Oblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Regular.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBold.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBoldItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-SemiBoldOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-Thin.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ThinItalic.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
fontforge -script ../../../patcher/font-patcher TTF-Unhinted/IosevkaPlex-ThinOblique.ttf --outputdir ../../../output/TTF-Unhinted --complete --variable-width-glyphs --makegroups 4
