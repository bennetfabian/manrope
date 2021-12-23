## Fontbakery report

Fontbakery version: 0.8.4

<details>
<summary><b>[10] Family checks</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking all files are in the same directory.</summary>

* [com.google.fonts/check/family/single_directory](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/single_directory)
<pre>--- Rationale ---
If the set of font files passed in the command line is not all in the same
directory, then we warn the user since the tool will interpret the set of files
as belonging to a single family (and it is unlikely that the user would store
the files from a single family spreaded in several separate directories).</pre>

* 🔥 **FAIL** Not all fonts passed in the command line are in the same directory. This may lead to bad results as the tool will interpret all font files as belonging to a single font family. The detected directories are: ['./fonts/OTF', './fonts/Variable'] [code: single-directory]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Each font in a family must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/family/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/vertical_metrics)
<pre>--- Rationale ---
We want all fonts within a family to have the same vertical metrics so their
line spacing is consistent across the family.</pre>

* 🔥 **FAIL** sTypoAscender is not the same across the family:
Manrope Bold: 2132
Manrope BoldItalic: 2040
Manrope ExtraBold: 2132
Manrope ExtraBoldItalic: 2040
Manrope ExtraLight: 2132
Manrope ExtraLightItalic: 2040
Manrope Italic: 2040
Manrope Light: 2132
Manrope LightItalic: 2040
Manrope Medium: 2132
Manrope MediumItalic: 2040
Manrope Regular: 2132
Manrope SemiBold: 2132
Manrope SemiBoldItalic: 2040
Manrope ExtraLight Italic: 2040 [code: sTypoAscender-mismatch]
* 🔥 **FAIL** ascent is not the same across the family:
Manrope Bold: 2132
Manrope BoldItalic: 2040
Manrope ExtraBold: 2132
Manrope ExtraBoldItalic: 2040
Manrope ExtraLight: 2132
Manrope ExtraLightItalic: 2040
Manrope Italic: 2040
Manrope Light: 2132
Manrope LightItalic: 2040
Manrope Medium: 2132
Manrope MediumItalic: 2040
Manrope Regular: 2132
Manrope SemiBold: 2132
Manrope SemiBoldItalic: 2040
Manrope ExtraLight Italic: 2040 [code: ascent-mismatch]

</details>
<details>
<summary>🍞 <b>PASS:</b> Fonts have equal unicode encodings?</summary>

* [com.google.fonts/check/family/equal_unicode_encodings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/family/equal_unicode_encodings)

* 🍞 **PASS** Fonts have equal unicode encodings.

</details>
<details>
<summary>🍞 <b>PASS:</b> Fonts have consistent PANOSE proportion?</summary>

* [com.google.fonts/check/family/panose_proportion](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/family/panose_proportion)

* 🍞 **PASS** Fonts have consistent PANOSE proportion.

</details>
<details>
<summary>🍞 <b>PASS:</b> Fonts have consistent PANOSE family type?</summary>

* [com.google.fonts/check/family/panose_familytype](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/family/panose_familytype)

* 🍞 **PASS** Fonts have consistent PANOSE family type.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check that OS/2.fsSelection bold & italic settings are unique for each NameID1</summary>

* [com.adobe.fonts/check/family/bold_italic_unique_for_nameid1](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/family/bold_italic_unique_for_nameid1)
<pre>--- Rationale ---
Per the OpenType spec: name ID 1 &#x27;is used in combination with Font Subfamily
name (name ID 2), and should be shared among at most four fonts that differ only
in weight or style...
This four-way distinction should also be reflected in the OS/2.fsSelection
field, using bits 0 and 5.</pre>

* 🍞 **PASS** The OS/2.fsSelection bold & italic settings were unique within each compatible family group.

</details>
<details>
<summary>🍞 <b>PASS:</b> Fonts have consistent underline thickness?</summary>

* [com.google.fonts/check/family/underline_thickness](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/family/underline_thickness)
<pre>--- Rationale ---
Dave C Lemon (Adobe Type Team) recommends setting the underline thickness to be
consistent across the family.
If thicknesses are not family consistent, words set on the same line which have
different styles look strange.
See also:
https://twitter.com/typenerd1/status/690361887926697986</pre>

* 🍞 **PASS** Fonts have consistent underline thickness.

</details>
<details>
<summary>🍞 <b>PASS:</b> Verify that each group of fonts with the same nameID 1 has maximum of 4 fonts</summary>

* [com.adobe.fonts/check/family/max_4_fonts_per_family_name](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/family/max_4_fonts_per_family_name)
<pre>--- Rationale ---
Per the OpenType spec:
&#x27;The Font Family name [...] should be shared among at most four fonts that
differ only in weight or style [...]&#x27;</pre>

* 🍞 **PASS** There were no more than 4 fonts per family name.

</details>
<details>
<summary>💤 <b>SKIP:</b> Do we have the latest version of FontBakery installed?</summary>

* [com.google.fonts/check/fontbakery_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/fontbakery_version)
<pre>--- Rationale ---
Running old versions of FontBakery can lead to a poor report which may include
false WARNs and FAILs due do bugs, as well as outdated quality assurance
criteria.
Older versions will also not report problems that are detected by new checks
added to the tool in more recent updates.</pre>

* 💤 **SKIP** No applicable arguments

</details>
<details>
<summary>⚠ <b>WARN:</b> Make sure all font files have the same version value.</summary>

* [com.google.fonts/check/family/equal_font_versions](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/family/equal_font_versions)

* ⚠ **WARN** Version info differs among font files of the same font project.
These were the version values found:
* ./fonts/OTF/Manrope-Bold.otf: 4.5050048828125
* ./fonts/OTF/Manrope-BoldItalic.otf: 4.5030059814453125
* ./fonts/OTF/Manrope-ExtraBold.otf: 4.5050048828125
* ./fonts/OTF/Manrope-ExtraBoldItalic.otf: 4.5030059814453125
* ./fonts/OTF/Manrope-ExtraLight.otf: 4.5050048828125
* ./fonts/OTF/Manrope-ExtraLightItalic.otf: 4.5030059814453125
* ./fonts/OTF/Manrope-Italic.otf: 4.5030059814453125
* ./fonts/OTF/Manrope-Light.otf: 4.5050048828125
* ./fonts/OTF/Manrope-LightItalic.otf: 4.5030059814453125
* ./fonts/OTF/Manrope-Medium.otf: 4.5050048828125
* ./fonts/OTF/Manrope-MediumItalic.otf: 4.5030059814453125
* ./fonts/OTF/Manrope-Regular.otf: 4.5050048828125
* ./fonts/OTF/Manrope-SemiBold.otf: 4.5050048828125
* ./fonts/OTF/Manrope-SemiBoldItalic.otf: 4.5030059814453125
* ./fonts/Variable/Manrope[wght].ttf: 4.5050048828125
* ./fonts/Variable/Manrope-Italic[wght].ttf: 4.5030059814453125
 [code: mismatch]

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-Bold.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - nonmarkingreturn 
 - .null
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=377.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=612.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=857.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=1092.0,Y=2.0 (should be at baseline 0?)
	* two (U+0032): X=100.0,Y=2.0 (should be at baseline 0?)
	* two (U+0032): X=1091.0,Y=2.0 (should be at baseline 0?)
	* U (U+0055): X=140.0,Y=1438.0 (should be at cap-height 1440?)
	* W (U+0057): X=849.0,Y=1438.0 (should be at cap-height 1440?)
	* w (U+0077): X=40.0,Y=1082.0 (should be at x-height 1080?)
	* Ugrave (U+00D9): X=140.0,Y=1438.0 (should be at cap-height 1440?) and 24 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1100.0,876.0>--<1100.0,842.0>>
	* Z (U+005A) contains a short segment L<<1227.0,1406.0>--<1227.0,1440.0>>
	* Z (U+005A) contains a short segment L<<100.0,33.0>--<100.0,0.0>>
	* section (U+00A7) contains a short segment B<<479.0,682.0>-<481.0,682.0>-<483.0,681.0>-<484.0,681.0>>
	* thorn (U+00FE) contains a short segment L<<140.0,1080.0>--<138.0,1080.0>>
	* tbar (U+0167) contains a short segment L<<216.0,463.0>--<216.0,441.0>>
	* Zacute (U+0179) contains a short segment L<<1227.0,1406.0>--<1227.0,1440.0>>
	* Zacute (U+0179) contains a short segment L<<100.0,33.0>--<100.0,0.0>>
	* Zdotaccent (U+017B) contains a short segment L<<1227.0,1406.0>--<1227.0,1440.0>>
	* Zdotaccent (U+017B) contains a short segment L<<100.0,33.0>--<100.0,0.0>> and 16 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Ohorn (U+01A0): L<<1314.0,1619.0>--<1132.0,1618.0>>
 * Omegatonos (U+038F): L<<1157.0,226.0>--<1156.0,0.0>>
 * U (U+0055): L<<384.0,1440.0>--<140.0,1438.0>>
 * Uacute (U+00DA): L<<384.0,1440.0>--<140.0,1438.0>>
 * Ubreve (U+016C): L<<384.0,1440.0>--<140.0,1438.0>>
 * Ucircumflex (U+00DB): L<<384.0,1440.0>--<140.0,1438.0>>
 * Udieresis (U+00DC): L<<384.0,1440.0>--<140.0,1438.0>>
 * Ugrave (U+00D9): L<<384.0,1440.0>--<140.0,1438.0>>
 * Uhorn (U+01AF): L<<1543.0,1620.0>--<1360.0,1619.0>>
 * Uhorn (U+01AF): L<<384.0,1440.0>--<140.0,1438.0>> and 57 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 🍞 **PASS** No colinear vectors found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-BoldItalic.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - uni03020301
 - five.numr
 - uni03060301
 - uni03020303
 - uni03020300
 - Ovalcondensed
 - five.dnom
 - nonmarkingreturn
 - lineverticalde
 - ncurve
 - seven.numr
 - one.numr
 - four.numr
 - nine.numr
 - two.dnom
 - mcurve
 - horncombround
 - uni03020309
 - three.numr
 - lineverticalac
 - cornercy
 - lineverticalshort
 - eight.numr
 - four.dnom
 - six.dnom
 - zero.numr
 - uni03060300
 - brevecombcy
 - ovalinner
 - two.numr
 - omegaside
 - six.numr
 - three.dnom
 - uni03060309
 - uni03060303
 - zero.dnom
 - eight.dnom
 - one.dnom
 - nine.dnom 
 - seven.dnom
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=245.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=480.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=725.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=960.0,Y=2.0 (should be at baseline 0?)
	* two (U+0032): X=-9.0,Y=2.0 (should be at baseline 0?)
	* two (U+0032): X=982.0,Y=2.0 (should be at baseline 0?)
	* U (U+0055): X=327.0,Y=1438.0 (should be at cap-height 1440?)
	* W (U+0057): X=1036.0,Y=1438.0 (should be at cap-height 1440?)
	* w (U+0077): X=148.0,Y=1082.0 (should be at x-height 1080?)
	* Ugrave (U+00D9): X=327.0,Y=1438.0 (should be at cap-height 1440?) and 24 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1163.0,876.0>--<1156.0,845.0>>
	* Z (U+005A) contains a short segment L<<1407.0,1406.0>--<1414.0,1440.0>>
	* Z (U+005A) contains a short segment L<<-24.0,33.0>--<-32.0,0.0>>
	* thorn (U+00FE) contains a short segment L<<248.0,1080.0>--<245.0,1080.0>>
	* OE (U+0152) contains a short segment B<<1444.0,627.0>-<1444.0,629.0>-<1445.0,631.0>-<1445.0,633.0>>
	* tbar (U+0167) contains a short segment L<<187.0,463.0>--<182.0,441.0>>
	* Zacute (U+0179) contains a short segment L<<1407.0,1406.0>--<1414.0,1440.0>>
	* Zacute (U+0179) contains a short segment L<<-24.0,33.0>--<-32.0,0.0>>
	* Zdotaccent (U+017B) contains a short segment L<<1407.0,1406.0>--<1414.0,1440.0>>
	* Zdotaccent (U+017B) contains a short segment L<<-24.0,33.0>--<-32.0,0.0>> and 15 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* eng (U+014B): L<<870.0,520.0>--<755.0,0.0>> -> L<<755.0,0.0>--<727.0,-128.0>> and eng (U+014B): L<<960.0,-178.0>--<1000.0,4.0>> -> L<<1000.0,4.0>--<1132.0,603.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Ohorn (U+01A0): L<<1541.0,1619.0>--<1359.0,1618.0>>
 * U (U+0055): L<<571.0,1440.0>--<327.0,1438.0>>
 * Uacute (U+00DA): L<<571.0,1440.0>--<327.0,1438.0>>
 * Ubreve (U+016C): L<<571.0,1440.0>--<327.0,1438.0>>
 * Ucircumflex (U+00DB): L<<571.0,1440.0>--<327.0,1438.0>>
 * Udieresis (U+00DC): L<<571.0,1440.0>--<327.0,1438.0>>
 * Ugrave (U+00D9): L<<571.0,1440.0>--<327.0,1438.0>>
 * Uhorn (U+01AF): L<<1769.0,1620.0>--<1587.0,1619.0>>
 * Uhorn (U+01AF): L<<571.0,1440.0>--<327.0,1438.0>>
 * Uhungarumlaut (U+0170): L<<571.0,1440.0>--<327.0,1438.0>> and 51 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 🍞 **PASS** Font does not has spacing glyphs in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 🍞 **PASS** Font does not have mark characters not in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 🍞 **PASS** Font does not have non-mark characters in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-ExtraBold.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - nonmarkingreturn 
 - .null
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=366.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=630.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=846.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=1110.0,Y=2.0 (should be at baseline 0?)
	* two (U+0032): X=100.0,Y=2.0 (should be at baseline 0?)
	* two (U+0032): X=1108.0,Y=2.0 (should be at baseline 0?)
	* U (U+0055): X=140.0,Y=1438.0 (should be at cap-height 1440?)
	* W (U+0057): X=846.0,Y=1438.0 (should be at cap-height 1440?)
	* w (U+0077): X=40.0,Y=1082.0 (should be at x-height 1080?)
	* Ugrave (U+00D9): X=140.0,Y=1438.0 (should be at cap-height 1440?) and 23 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1104.0,900.0>--<1104.0,868.0>>
	* Z (U+005A) contains a short segment L<<1260.0,1406.0>--<1260.0,1440.0>>
	* Z (U+005A) contains a short segment L<<100.0,34.0>--<100.0,0.0>>
	* thorn (U+00FE) contains a short segment L<<140.0,1080.0>--<138.0,1080.0>>
	* Zacute (U+0179) contains a short segment L<<1260.0,1406.0>--<1260.0,1440.0>>
	* Zacute (U+0179) contains a short segment L<<100.0,34.0>--<100.0,0.0>>
	* Zdotaccent (U+017B) contains a short segment L<<1260.0,1406.0>--<1260.0,1440.0>>
	* Zdotaccent (U+017B) contains a short segment L<<100.0,34.0>--<100.0,0.0>>
	* Zcaron (U+017D) contains a short segment L<<1260.0,1406.0>--<1260.0,1440.0>>
	* Zcaron (U+017D) contains a short segment L<<100.0,34.0>--<100.0,0.0>> and 13 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Ohorn (U+01A0): L<<1337.0,1617.0>--<1135.0,1616.0>>
 * U (U+0055): L<<416.0,1440.0>--<140.0,1438.0>>
 * Uacute (U+00DA): L<<416.0,1440.0>--<140.0,1438.0>>
 * Ubreve (U+016C): L<<416.0,1440.0>--<140.0,1438.0>>
 * Ucircumflex (U+00DB): L<<416.0,1440.0>--<140.0,1438.0>>
 * Udieresis (U+00DC): L<<416.0,1440.0>--<140.0,1438.0>>
 * Ugrave (U+00D9): L<<416.0,1440.0>--<140.0,1438.0>>
 * Uhorn (U+01AF): L<<1570.0,1620.0>--<1368.0,1619.0>>
 * Uhorn (U+01AF): L<<416.0,1440.0>--<140.0,1438.0>>
 * Uhungarumlaut (U+0170): L<<416.0,1440.0>--<140.0,1438.0>> and 53 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 🍞 **PASS** No colinear vectors found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-ExtraBoldItalic.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - uni03020301
 - five.numr
 - uni03060301
 - uni03020303
 - uni03020300
 - Ovalcondensed
 - five.dnom
 - nonmarkingreturn
 - lineverticalde
 - ncurve
 - seven.numr
 - one.numr
 - four.numr
 - nine.numr
 - two.dnom
 - mcurve
 - horncombround
 - uni03020309
 - three.numr
 - lineverticalac
 - cornercy
 - lineverticalshort
 - eight.numr
 - four.dnom
 - six.dnom
 - zero.numr
 - uni03060300
 - brevecombcy
 - ovalinner
 - two.numr
 - omegaside
 - six.numr
 - three.dnom
 - uni03060309
 - uni03060303
 - zero.dnom
 - eight.dnom
 - one.dnom
 - nine.dnom 
 - seven.dnom
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=234.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=498.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=714.0,Y=2.0 (should be at baseline 0?)
	* numbersign (U+0023): X=978.0,Y=2.0 (should be at baseline 0?)
	* two (U+0032): X=-18.0,Y=2.0 (should be at baseline 0?)
	* two (U+0032): X=990.0,Y=2.0 (should be at baseline 0?)
	* U (U+0055): X=327.0,Y=1438.0 (should be at cap-height 1440?)
	* W (U+0057): X=1033.0,Y=1438.0 (should be at cap-height 1440?)
	* w (U+0077): X=148.0,Y=1082.0 (should be at x-height 1080?)
	* Ugrave (U+00D9): X=327.0,Y=1438.0 (should be at cap-height 1440?) and 24 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1172.0,900.0>--<1165.0,872.0>>
	* Z (U+005A) contains a short segment L<<1440.0,1406.0>--<1447.0,1440.0>>
	* Z (U+005A) contains a short segment L<<-24.0,34.0>--<-32.0,0.0>>
	* braceleft (U+007B) contains a short segment B<<369.0,490.0>-<373.0,482.0>-<374.0,470.0>-<372.0,458.0>>
	* braceright (U+007D) contains a short segment B<<855.0,890.0>-<851.0,900.0>-<849.0,910.0>-<852.0,922.0>>
	* thorn (U+00FE) contains a short segment L<<248.0,1080.0>--<245.0,1080.0>>
	* Zacute (U+0179) contains a short segment L<<1440.0,1406.0>--<1447.0,1440.0>>
	* Zacute (U+0179) contains a short segment L<<-24.0,34.0>--<-32.0,0.0>>
	* Zdotaccent (U+017B) contains a short segment L<<1440.0,1406.0>--<1447.0,1440.0>>
	* Zdotaccent (U+017B) contains a short segment L<<-24.0,34.0>--<-32.0,0.0>> and 15 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* eng (U+014B): L<<857.0,510.0>--<744.0,0.0>> -> L<<744.0,0.0>--<715.0,-132.0>> and eng (U+014B): L<<981.0,-176.0>--<1021.0,4.0>> -> L<<1021.0,4.0>--<1154.0,606.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Ohorn (U+01A0): L<<1563.0,1617.0>--<1361.0,1616.0>>
 * U (U+0055): L<<603.0,1440.0>--<327.0,1438.0>>
 * Uacute (U+00DA): L<<603.0,1440.0>--<327.0,1438.0>>
 * Ubreve (U+016C): L<<603.0,1440.0>--<327.0,1438.0>>
 * Ucircumflex (U+00DB): L<<603.0,1440.0>--<327.0,1438.0>>
 * Udieresis (U+00DC): L<<603.0,1440.0>--<327.0,1438.0>>
 * Ugrave (U+00D9): L<<603.0,1440.0>--<327.0,1438.0>>
 * Uhorn (U+01AF): L<<1797.0,1620.0>--<1595.0,1619.0>>
 * Uhorn (U+01AF): L<<603.0,1440.0>--<327.0,1438.0>>
 * Uhungarumlaut (U+0170): L<<603.0,1440.0>--<327.0,1438.0>> and 47 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 🍞 **PASS** Font does not has spacing glyphs in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 🍞 **PASS** Font does not have mark characters not in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 🍞 **PASS** Font does not have non-mark characters in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-ExtraLight.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - nonmarkingreturn 
 - .null
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* M (U+004D): X=1438.0,Y=2.0 (should be at baseline 0?)
	* M (U+004D): X=1522.0,Y=2.0 (should be at baseline 0?)
	* y (U+0079): X=480.0,Y=-1.0 (should be at baseline 0?)
	* yacute (U+00FD): X=480.0,Y=-1.0 (should be at baseline 0?)
	* ydieresis (U+00FF): X=480.0,Y=-1.0 (should be at baseline 0?)
	* ycircumflex (U+0177): X=480.0,Y=-1.0 (should be at baseline 0?)
	* Ohorn (U+01A0): X=913.0,Y=1442.0 (should be at cap-height 1440?)
	* Mu (U+039C): X=1438.0,Y=2.0 (should be at baseline 0?)
	* Mu (U+039C): X=1522.0,Y=2.0 (should be at baseline 0?)
	* phi (U+03C6): X=740.0,Y=1438.0 (should be at cap-height 1440?) and 18 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1080.0,756.0>--<1080.0,710.0>>
	* Z (U+005A) contains a short segment L<<1062.0,1406.0>--<1062.0,1440.0>>
	* Z (U+005A) contains a short segment L<<100.0,30.0>--<100.0,0.0>>
	* z (U+007A) contains a short segment L<<974.0,1046.0>--<974.0,1080.0>>
	* z (U+007A) contains a short segment L<<40.0,30.0>--<40.0,0.0>>
	* yen (U+00A5) contains a short segment L<<562.0,596.0>--<562.0,612.0>>
	* yen (U+00A5) contains a short segment L<<478.0,612.0>--<478.0,596.0>>
	* eogonek (U+0119) contains a short segment B<<1032.0,241.0>-<1035.0,247.0>-<1037.0,252.0>-<1040.0,258.0>>
	* Eng (U+014A) contains a short segment B<<1008.0,-272.0>-<992.0,-272.0>-<972.0,-270.0>-<950.0,-266.0>>
	* Zacute (U+0179) contains a short segment L<<1062.0,1406.0>--<1062.0,1440.0>> and 24 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * ampersand (U+0026): L<<1000.0,660.0>--<1002.0,426.0>>
 * m (U+006D): L<<1424.0,744.0>--<1422.0,0.0>>
 * m (U+006D): L<<1506.0,0.0>--<1508.0,750.0>>
 * m (U+006D): L<<784.0,730.0>--<782.0,0.0>>
 * m (U+006D): L<<864.0,0.0>--<866.0,718.0>>
 * summation (U+2211): L<<120.0,-134.0>--<910.0,-132.0>>
 * trademark (U+2122): L<<1634.0,690.0>--<1632.0,1440.0>>
 * uni044A (U+044A): L<<180.0,996.0>--<182.0,0.0>>
 * uni044B (U+044B): L<<140.0,1080.0>--<142.0,0.0>>
 * uni044C (U+044C): L<<140.0,1080.0>--<142.0,0.0>> and 3 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 🍞 **PASS** No colinear vectors found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-ExtraLightItalic.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - uni03020301
 - five.numr
 - uni03060301
 - uni03020303
 - uni03020300
 - Ovalcondensed
 - five.dnom
 - nonmarkingreturn
 - lineverticalde
 - ncurve
 - seven.numr
 - one.numr
 - four.numr
 - nine.numr
 - two.dnom
 - mcurve
 - horncombround
 - uni03020309
 - three.numr
 - lineverticalac
 - cornercy
 - lineverticalshort
 - eight.numr
 - four.dnom
 - six.dnom
 - zero.numr
 - uni03060300
 - brevecombcy
 - ovalinner
 - two.numr
 - omegaside
 - six.numr
 - three.dnom
 - uni03060309
 - uni03060303
 - zero.dnom
 - eight.dnom
 - one.dnom
 - nine.dnom 
 - seven.dnom
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* M (U+004D): X=1306.0,Y=2.0 (should be at baseline 0?)
	* M (U+004D): X=1390.0,Y=2.0 (should be at baseline 0?)
	* y (U+0079): X=348.0,Y=-2.0 (should be at baseline 0?)
	* yacute (U+00FD): X=348.0,Y=-2.0 (should be at baseline 0?)
	* ydieresis (U+00FF): X=348.0,Y=-2.0 (should be at baseline 0?)
	* eng (U+014B): X=810.0,Y=2.0 (should be at baseline 0?)
	* ycircumflex (U+0177): X=348.0,Y=-2.0 (should be at baseline 0?)
	* uni0312 (U+0312): X=691.0,Y=1438.0 (should be at cap-height 1440?)
	* Mu (U+039C): X=1306.0,Y=2.0 (should be at baseline 0?)
	* Mu (U+039C): X=1390.0,Y=2.0 (should be at baseline 0?) and 13 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1116.0,756.0>--<1107.0,714.0>>
	* Z (U+005A) contains a short segment L<<1242.0,1406.0>--<1249.0,1440.0>>
	* Z (U+005A) contains a short segment L<<-25.0,30.0>--<-32.0,0.0>>
	* z (U+007A) contains a short segment L<<1074.0,1046.0>--<1081.0,1080.0>>
	* z (U+007A) contains a short segment L<<-85.0,30.0>--<-92.0,0.0>>
	* yen (U+00A5) contains a short segment L<<562.0,596.0>--<566.0,612.0>>
	* yen (U+00A5) contains a short segment L<<482.0,612.0>--<478.0,596.0>>
	* eogonek (U+0119) contains a short segment B<<954.0,242.0>-<957.0,247.0>-<961.0,253.0>-<965.0,258.0>>
	* Eng (U+014A) contains a short segment B<<816.0,-272.0>-<800.0,-272.0>-<780.0,-270.0>-<759.0,-266.0>>
	* OE (U+0152) contains a short segment B<<1369.0,671.0>-<1369.0,673.0>-<1370.0,676.0>-<1370.0,678.0>> and 21 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* daggerdbl (U+2021): L<<284.0,0.0>--<392.0,486.0>> -> L<<392.0,486.0>--<393.0,492.0>>
	* daggerdbl (U+2021): L<<399.0,898.0>--<329.0,582.0>> -> L<<329.0,582.0>--<328.0,576.0>>
	* daggerdbl (U+2021): L<<412.0,576.0>--<482.0,892.0>> -> L<<482.0,892.0>--<483.0,898.0>>
	* daggerdbl (U+2021): L<<519.0,1440.0>--<419.0,988.0>> -> L<<419.0,988.0>--<418.0,982.0>>
	* eng (U+014B): L<<852.0,-190.0>--<894.0,0.0>> -> L<<894.0,0.0>--<1024.0,588.0>>
	* eng (U+014B): L<<937.0,572.0>--<810.0,2.0>> -> L<<810.0,2.0>--<786.0,-110.0>>
	* thorn (U+00FE): L<<210.0,914.0>--<181.0,782.0>> -> L<<181.0,782.0>--<-98.0,-480.0>>
	* thorn (U+00FE): L<<247.0,1080.0>--<210.0,914.0>> -> L<<210.0,914.0>--<181.0,782.0>> and thorn (U+00FE): L<<327.0,1440.0>--<247.0,1080.0>> -> L<<247.0,1080.0>--<210.0,914.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* alpha (U+03B1): B<<411.0,-30.0>-<659.0,-30.0>-<804.0,67.0>-<902.0,270.0>>/L<<902.0,270.0>--<842.0,0.0>> = 13.240519915187184 and alphatonos (U+03AC): B<<411.0,-30.0>-<659.0,-30.0>-<804.0,67.0>-<902.0,270.0>>/L<<902.0,270.0>--<842.0,0.0>> = 13.240519915187184 [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * summation (U+2211): L<<-42.0,-134.0>--<749.0,-132.0>> [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 🍞 **PASS** Font does not has spacing glyphs in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 🍞 **PASS** Font does not have mark characters not in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 🍞 **PASS** Font does not have non-mark characters in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-Italic.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - uni03020301
 - five.numr
 - uni03060301
 - uni03020303
 - uni03020300
 - Ovalcondensed
 - five.dnom
 - nonmarkingreturn
 - lineverticalde
 - ncurve
 - seven.numr
 - one.numr
 - four.numr
 - nine.numr
 - two.dnom
 - mcurve
 - horncombround
 - uni03020309
 - three.numr
 - lineverticalac
 - cornercy
 - lineverticalshort
 - eight.numr
 - four.dnom
 - six.dnom
 - zero.numr
 - uni03060300
 - brevecombcy
 - ovalinner
 - two.numr
 - omegaside
 - six.numr
 - three.dnom
 - uni03060309
 - uni03060303
 - zero.dnom
 - eight.dnom
 - one.dnom
 - nine.dnom 
 - seven.dnom
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=279.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=425.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=759.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=905.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=17.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=957.0,Y=1.0 (should be at baseline 0?)
	* at (U+0040): X=1105.0,Y=-1.0 (should be at baseline 0?)
	* M (U+004D): X=1269.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1409.0,Y=1.0 (should be at baseline 0?)
	* U (U+0055): X=327.0,Y=1439.0 (should be at cap-height 1440?) and 44 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1135.0,804.0>--<1126.0,765.0>>
	* Z (U+005A) contains a short segment L<<1308.0,1406.0>--<1315.0,1440.0>>
	* Z (U+005A) contains a short segment L<<-25.0,31.0>--<-32.0,0.0>>
	* z (U+007A) contains a short segment L<<1079.0,1046.0>--<1086.0,1080.0>>
	* z (U+007A) contains a short segment L<<-85.0,31.0>--<-92.0,0.0>>
	* thorn (U+00FE) contains a short segment L<<247.0,1080.0>--<246.0,1080.0>>
	* eogonek (U+0119) contains a short segment B<<612.0,-17.0>-<604.0,-24.0>-<597.0,-31.0>-<592.0,-37.0>>
	* eng (U+014B) contains a short segment L<<789.0,3.0>--<788.0,3.0>>
	* eng (U+014B) contains a short segment L<<935.0,0.0>--<936.0,0.0>>
	* OE (U+0152) contains a short segment B<<1396.0,643.0>-<1398.0,649.0>-<1399.0,654.0>-<1401.0,660.0>> and 17 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * U (U+0055): L<<475.0,1440.0>--<327.0,1439.0>>
 * Uacute (U+00DA): L<<475.0,1440.0>--<327.0,1439.0>>
 * Ubreve (U+016C): L<<475.0,1440.0>--<327.0,1439.0>>
 * Ucircumflex (U+00DB): L<<475.0,1440.0>--<327.0,1439.0>>
 * Udieresis (U+00DC): L<<475.0,1440.0>--<327.0,1439.0>>
 * Ugrave (U+00D9): L<<475.0,1440.0>--<327.0,1439.0>>
 * Uhorn (U+01AF): L<<475.0,1440.0>--<327.0,1439.0>>
 * Uhungarumlaut (U+0170): L<<475.0,1440.0>--<327.0,1439.0>>
 * Umacron (U+016A): L<<475.0,1440.0>--<327.0,1439.0>>
 * Uogonek (U+0172): L<<475.0,1440.0>--<327.0,1439.0>> and 25 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 🍞 **PASS** Font does not has spacing glyphs in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 🍞 **PASS** Font does not have mark characters not in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 🍞 **PASS** Font does not have non-mark characters in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 🍞 **PASS** No colinear vectors found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-Light.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - nonmarkingreturn 
 - .null
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* M (U+004D): X=1419.0,Y=2.0 (should be at baseline 0?)
	* M (U+004D): X=1532.0,Y=2.0 (should be at baseline 0?)
	* section (U+00A7): X=235.0,Y=1.0 (should be at baseline 0?)
	* onequarter (U+00BC): X=1319.0,Y=1442.0 (should be at cap-height 1440?)
	* onehalf (U+00BD): X=1319.0,Y=1442.0 (should be at cap-height 1440?)
	* threequarters (U+00BE): X=1461.0,Y=1442.0 (should be at cap-height 1440?)
	* eogonek (U+0119): X=771.0,Y=1.0 (should be at baseline 0?)
	* Mu (U+039C): X=1419.0,Y=2.0 (should be at baseline 0?)
	* Mu (U+039C): X=1532.0,Y=2.0 (should be at baseline 0?)
	* uni041C (U+041C): X=1419.0,Y=2.0 (should be at baseline 0?)
	* uni041C (U+041C): X=1532.0,Y=2.0 (should be at baseline 0?) and fraction (U+2044): X=691.0,Y=1442.0 (should be at cap-height 1440?) [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1084.0,780.0>--<1084.0,737.0>>
	* Z (U+005A) contains a short segment L<<1095.0,1406.0>--<1095.0,1440.0>>
	* Z (U+005A) contains a short segment L<<100.0,31.0>--<100.0,0.0>>
	* z (U+007A) contains a short segment L<<977.0,1046.0>--<977.0,1080.0>>
	* z (U+007A) contains a short segment L<<40.0,31.0>--<40.0,0.0>>
	* uni0162 (U+0162) contains a short segment L<<536.0,0.0>--<544.0,0.0>>
	* uni0162 (U+0162) contains a short segment L<<640.0,0.0>--<651.0,0.0>>
	* Zacute (U+0179) contains a short segment L<<1095.0,1406.0>--<1095.0,1440.0>>
	* Zacute (U+0179) contains a short segment L<<100.0,31.0>--<100.0,0.0>>
	* zacute (U+017A) contains a short segment L<<977.0,1046.0>--<977.0,1080.0>> and 25 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* thorn (U+00FE): L<<140.0,1440.0>--<140.0,1080.0>> -> L<<140.0,1080.0>--<140.0,-480.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* Ohorn (U+01A0): B<<921.0,1443.0>-<914.0,1445.0>-<907.0,1447.0>-<900.0,1448.0>>/L<<900.0,1448.0>--<900.0,1448.0>> = 8.13010235415596
	* uni1EDA (U+1EDA): B<<921.0,1443.0>-<914.0,1445.0>-<907.0,1447.0>-<900.0,1448.0>>/L<<900.0,1448.0>--<900.0,1448.0>> = 8.13010235415596
	* uni1EDC (U+1EDC): B<<921.0,1443.0>-<914.0,1445.0>-<907.0,1447.0>-<900.0,1448.0>>/L<<900.0,1448.0>--<900.0,1448.0>> = 8.13010235415596
	* uni1EDE (U+1EDE): B<<921.0,1443.0>-<914.0,1445.0>-<907.0,1447.0>-<900.0,1448.0>>/L<<900.0,1448.0>--<900.0,1448.0>> = 8.13010235415596
	* uni1EE0 (U+1EE0): B<<921.0,1443.0>-<914.0,1445.0>-<907.0,1447.0>-<900.0,1448.0>>/L<<900.0,1448.0>--<900.0,1448.0>> = 8.13010235415596 and uni1EE2 (U+1EE2): B<<921.0,1443.0>-<914.0,1445.0>-<907.0,1447.0>-<900.0,1448.0>>/L<<900.0,1448.0>--<900.0,1448.0>> = 8.13010235415596 [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * at (U+0040): L<<1175.0,473.0>--<1176.0,780.0>>
 * m (U+006D): L<<1427.0,726.0>--<1425.0,0.0>>
 * m (U+006D): L<<1540.0,0.0>--<1542.0,743.0>>
 * m (U+006D): L<<785.0,715.0>--<783.0,0.0>>
 * m (U+006D): L<<897.0,0.0>--<899.0,707.0>>
 * sterling (U+00A3): L<<446.0,112.0>--<447.0,677.0>>
 * summation (U+2211): L<<120.0,-135.0>--<928.0,-133.0>>
 * trademark (U+2122): L<<1651.0,690.0>--<1650.0,1440.0>>
 * uni044A (U+044A): L<<183.0,975.0>--<185.0,0.0>>
 * uni044B (U+044B): L<<140.0,1080.0>--<141.0,0.0>> and 4 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-LightItalic.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - uni03020301
 - five.numr
 - uni03060301
 - uni03020303
 - uni03020300
 - Ovalcondensed
 - five.dnom
 - nonmarkingreturn
 - lineverticalde
 - ncurve
 - seven.numr
 - one.numr
 - four.numr
 - nine.numr
 - two.dnom
 - mcurve
 - horncombround
 - uni03020309
 - three.numr
 - lineverticalac
 - cornercy
 - lineverticalshort
 - eight.numr
 - four.dnom
 - six.dnom
 - zero.numr
 - uni03060300
 - brevecombcy
 - ovalinner
 - two.numr
 - omegaside
 - six.numr
 - three.dnom
 - uni03060309
 - uni03060303
 - zero.dnom
 - eight.dnom
 - one.dnom
 - nine.dnom 
 - seven.dnom
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* M (U+004D): X=1287.0,Y=2.0 (should be at baseline 0?)
	* M (U+004D): X=1400.0,Y=2.0 (should be at baseline 0?)
	* y (U+0079): X=344.0,Y=-1.0 (should be at baseline 0?)
	* section (U+00A7): X=103.0,Y=1.0 (should be at baseline 0?)
	* onequarter (U+00BC): X=1506.0,Y=1442.0 (should be at cap-height 1440?)
	* onehalf (U+00BD): X=1506.0,Y=1442.0 (should be at cap-height 1440?)
	* threequarters (U+00BE): X=1649.0,Y=1442.0 (should be at cap-height 1440?)
	* yacute (U+00FD): X=344.0,Y=-1.0 (should be at baseline 0?)
	* ydieresis (U+00FF): X=344.0,Y=-1.0 (should be at baseline 0?)
	* eng (U+014B): X=799.0,Y=2.0 (should be at baseline 0?) and 12 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1125.0,780.0>--<1116.0,740.0>>
	* Z (U+005A) contains a short segment L<<1275.0,1406.0>--<1282.0,1440.0>>
	* Z (U+005A) contains a short segment L<<-25.0,31.0>--<-32.0,0.0>>
	* z (U+007A) contains a short segment L<<1077.0,1046.0>--<1084.0,1080.0>>
	* z (U+007A) contains a short segment L<<-85.0,31.0>--<-92.0,0.0>>
	* uni0162 (U+0162) contains a short segment L<<404.0,0.0>--<413.0,0.0>>
	* uni0162 (U+0162) contains a short segment L<<509.0,0.0>--<519.0,0.0>>
	* Uogonek (U+0172) contains a short segment B<<863.0,146.0>-<849.0,137.0>-<835.0,129.0>-<821.0,119.0>>
	* Zacute (U+0179) contains a short segment L<<1275.0,1406.0>--<1282.0,1440.0>>
	* Zacute (U+0179) contains a short segment L<<-25.0,31.0>--<-32.0,0.0>> and 13 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* eng (U+014B): L<<874.0,-188.0>--<915.0,0.0>> -> L<<915.0,0.0>--<1046.0,591.0>>
	* eng (U+014B): L<<924.0,562.0>--<799.0,2.0>> -> L<<799.0,2.0>--<774.0,-114.0>>
	* thorn (U+00FE): L<<232.0,1011.0>--<184.0,796.0>> -> L<<184.0,796.0>--<-98.0,-480.0>>
	* thorn (U+00FE): L<<247.0,1080.0>--<232.0,1011.0>> -> L<<232.0,1011.0>--<184.0,796.0>> and thorn (U+00FE): L<<327.0,1440.0>--<247.0,1080.0>> -> L<<247.0,1080.0>--<232.0,1011.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * summation (U+2211): L<<-42.0,-135.0>--<767.0,-133.0>> [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 🍞 **PASS** Font does not has spacing glyphs in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 🍞 **PASS** Font does not have mark characters not in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 🍞 **PASS** Font does not have non-mark characters in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-Medium.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - nonmarkingreturn 
 - .null
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=400.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=575.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=880.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=1055.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=100.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=1057.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1382.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1551.0,Y=1.0 (should be at baseline 0?)
	* U (U+0055): X=140.0,Y=1439.0 (should be at cap-height 1440?)
	* W (U+0057): X=855.0,Y=1439.0 (should be at cap-height 1440?) and 31 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1092.0,828.0>--<1092.0,789.0>>
	* Z (U+005A) contains a short segment L<<1161.0,1406.0>--<1161.0,1440.0>>
	* Z (U+005A) contains a short segment L<<100.0,32.0>--<100.0,0.0>>
	* z (U+007A) contains a short segment L<<40.0,32.0>--<40.0,0.0>>
	* thorn (U+00FE) contains a short segment L<<140.0,1080.0>--<139.0,1080.0>>
	* eogonek (U+0119) contains a short segment B<<745.0,-14.0>-<744.0,-14.0>-<744.0,-15.0>-<743.0,-16.0>>
	* uni0162 (U+0162) contains a short segment L<<511.0,0.0>--<537.0,0.0>>
	* uni0162 (U+0162) contains a short segment L<<658.0,0.0>--<689.0,0.0>>
	* Uogonek (U+0172) contains a short segment B<<708.0,-30.0>-<719.0,-30.0>-<730.0,-30.0>-<740.0,-29.0>>
	* Zacute (U+0179) contains a short segment L<<1161.0,1406.0>--<1161.0,1440.0>> and 13 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* eogonek (U+0119): B<<608.0,-30.0>-<655.0,-30.0>-<701.0,-24.0>-<745.0,-14.0>>/B<<745.0,-14.0>-<744.0,-14.0>-<744.0,-15.0>-<743.0,-16.0>> = 12.80426606528674 [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Ohorn (U+01A0): L<<1269.0,1622.0>--<1126.0,1621.0>>
 * Omegatonos (U+038F): L<<1122.0,169.0>--<1121.0,0.0>>
 * U (U+0055): L<<320.0,1440.0>--<140.0,1439.0>>
 * Uacute (U+00DA): L<<320.0,1440.0>--<140.0,1439.0>>
 * Ubreve (U+016C): L<<320.0,1440.0>--<140.0,1439.0>>
 * Ucircumflex (U+00DB): L<<320.0,1440.0>--<140.0,1439.0>>
 * Udieresis (U+00DC): L<<320.0,1440.0>--<140.0,1439.0>>
 * Ugrave (U+00D9): L<<320.0,1440.0>--<140.0,1439.0>>
 * Uhorn (U+01AF): L<<320.0,1440.0>--<140.0,1439.0>>
 * Uhungarumlaut (U+0170): L<<320.0,1440.0>--<140.0,1439.0>> and 55 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 🍞 **PASS** No colinear vectors found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-MediumItalic.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - uni03020301
 - five.numr
 - uni03060301
 - uni03020303
 - uni03020300
 - Ovalcondensed
 - five.dnom
 - nonmarkingreturn
 - lineverticalde
 - ncurve
 - seven.numr
 - one.numr
 - four.numr
 - nine.numr
 - two.dnom
 - mcurve
 - horncombround
 - uni03020309
 - three.numr
 - lineverticalac
 - cornercy
 - lineverticalshort
 - eight.numr
 - four.dnom
 - six.dnom
 - zero.numr
 - uni03060300
 - brevecombcy
 - ovalinner
 - two.numr
 - omegaside
 - six.numr
 - three.dnom
 - uni03060309
 - uni03060303
 - zero.dnom
 - eight.dnom
 - one.dnom
 - nine.dnom 
 - seven.dnom
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=268.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=443.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=748.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=923.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=8.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=965.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1250.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1419.0,Y=1.0 (should be at baseline 0?)
	* U (U+0055): X=327.0,Y=1439.0 (should be at cap-height 1440?)
	* W (U+0057): X=1042.0,Y=1439.0 (should be at cap-height 1440?) and 32 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1144.0,828.0>--<1136.0,792.0>>
	* Z (U+005A) contains a short segment L<<1341.0,1406.0>--<1348.0,1440.0>>
	* Z (U+005A) contains a short segment L<<-24.0,32.0>--<-32.0,0.0>>
	* z (U+007A) contains a short segment L<<1082.0,1046.0>--<1089.0,1080.0>>
	* z (U+007A) contains a short segment L<<-84.0,32.0>--<-92.0,0.0>>
	* thorn (U+00FE) contains a short segment L<<248.0,1080.0>--<246.0,1080.0>>
	* OE (U+0152) contains a short segment B<<1413.0,642.0>-<1414.0,645.0>-<1415.0,648.0>-<1415.0,651.0>>
	* uni0162 (U+0162) contains a short segment L<<379.0,0.0>--<406.0,0.0>>
	* uni0162 (U+0162) contains a short segment L<<527.0,0.0>--<557.0,0.0>>
	* Uogonek (U+0172) contains a short segment B<<569.0,-30.0>-<580.0,-30.0>-<591.0,-30.0>-<602.0,-30.0>> and 15 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* eng (U+014B): L<<897.0,541.0>--<777.0,0.0>> -> L<<777.0,0.0>--<751.0,-121.0>> and eng (U+014B): L<<917.0,-183.0>--<958.0,3.0>> -> L<<958.0,3.0>--<1089.0,597.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * U (U+0055): L<<507.0,1440.0>--<327.0,1439.0>>
 * Uacute (U+00DA): L<<507.0,1440.0>--<327.0,1439.0>>
 * Ubreve (U+016C): L<<507.0,1440.0>--<327.0,1439.0>>
 * Ucircumflex (U+00DB): L<<507.0,1440.0>--<327.0,1439.0>>
 * Udieresis (U+00DC): L<<507.0,1440.0>--<327.0,1439.0>>
 * Ugrave (U+00D9): L<<507.0,1440.0>--<327.0,1439.0>>
 * Uhorn (U+01AF): L<<507.0,1440.0>--<327.0,1439.0>>
 * Uhungarumlaut (U+0170): L<<507.0,1440.0>--<327.0,1439.0>>
 * Umacron (U+016A): L<<507.0,1440.0>--<327.0,1439.0>>
 * Uogonek (U+0172): L<<507.0,1440.0>--<327.0,1439.0>> and 25 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 🍞 **PASS** Font does not has spacing glyphs in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 🍞 **PASS** Font does not have mark characters not in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 🍞 **PASS** Font does not have non-mark characters in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-Regular.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - nonmarkingreturn 
 - .null
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=411.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=557.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=891.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=1037.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=100.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=1040.0,Y=1.0 (should be at baseline 0?)
	* at (U+0040): X=1237.0,Y=-1.0 (should be at baseline 0?)
	* M (U+004D): X=1401.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1541.0,Y=1.0 (should be at baseline 0?)
	* U (U+0055): X=140.0,Y=1439.0 (should be at cap-height 1440?) and 55 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1088.0,804.0>--<1088.0,763.0>>
	* Z (U+005A) contains a short segment L<<1128.0,1406.0>--<1128.0,1440.0>>
	* Z (U+005A) contains a short segment L<<100.0,31.0>--<100.0,0.0>>
	* z (U+007A) contains a short segment L<<979.0,1046.0>--<979.0,1080.0>>
	* z (U+007A) contains a short segment L<<40.0,31.0>--<40.0,0.0>>
	* thorn (U+00FE) contains a short segment L<<140.0,1080.0>--<139.0,1080.0>>
	* eogonek (U+0119) contains a short segment B<<755.0,-8.0>-<746.0,-19.0>-<738.0,-29.0>-<732.0,-37.0>>
	* uni0162 (U+0162) contains a short segment L<<523.0,0.0>--<541.0,0.0>>
	* uni0162 (U+0162) contains a short segment L<<649.0,0.0>--<670.0,0.0>>
	* Zacute (U+0179) contains a short segment L<<1128.0,1406.0>--<1128.0,1440.0>> and 15 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * U (U+0055): L<<288.0,1440.0>--<140.0,1439.0>>
 * Uacute (U+00DA): L<<288.0,1440.0>--<140.0,1439.0>>
 * Ubreve (U+016C): L<<288.0,1440.0>--<140.0,1439.0>>
 * Ucircumflex (U+00DB): L<<288.0,1440.0>--<140.0,1439.0>>
 * Udieresis (U+00DC): L<<288.0,1440.0>--<140.0,1439.0>>
 * Ugrave (U+00D9): L<<288.0,1440.0>--<140.0,1439.0>>
 * Uhorn (U+01AF): L<<288.0,1440.0>--<140.0,1439.0>>
 * Uhungarumlaut (U+0170): L<<288.0,1440.0>--<140.0,1439.0>>
 * Umacron (U+016A): L<<288.0,1440.0>--<140.0,1439.0>>
 * Uogonek (U+0172): L<<288.0,1440.0>--<140.0,1439.0>> and 44 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 🍞 **PASS** No colinear vectors found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-SemiBold.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - nonmarkingreturn 
 - .null
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=389.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=593.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=869.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=1073.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=100.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=1074.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1363.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1561.0,Y=1.0 (should be at baseline 0?)
	* U (U+0055): X=140.0,Y=1439.0 (should be at cap-height 1440?)
	* W (U+0057): X=852.0,Y=1439.0 (should be at cap-height 1440?) and 38 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1096.0,852.0>--<1096.0,815.0>>
	* Z (U+005A) contains a short segment L<<1194.0,1406.0>--<1194.0,1440.0>>
	* Z (U+005A) contains a short segment L<<100.0,33.0>--<100.0,0.0>>
	* thorn (U+00FE) contains a short segment L<<140.0,1080.0>--<139.0,1080.0>>
	* uni0162 (U+0162) contains a short segment L<<499.0,0.0>--<533.0,0.0>>
	* Uogonek (U+0172) contains a short segment B<<714.0,-30.0>-<717.0,-30.0>-<719.0,-30.0>-<722.0,-30.0>>
	* Zacute (U+0179) contains a short segment L<<1194.0,1406.0>--<1194.0,1440.0>>
	* Zacute (U+0179) contains a short segment L<<100.0,33.0>--<100.0,0.0>>
	* Zdotaccent (U+017B) contains a short segment L<<1194.0,1406.0>--<1194.0,1440.0>>
	* Zdotaccent (U+017B) contains a short segment L<<100.0,33.0>--<100.0,0.0>> and 7 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Ohorn (U+01A0): L<<1292.0,1620.0>--<1129.0,1619.0>>
 * U (U+0055): L<<352.0,1440.0>--<140.0,1439.0>>
 * Uacute (U+00DA): L<<352.0,1440.0>--<140.0,1439.0>>
 * Ubreve (U+016C): L<<352.0,1440.0>--<140.0,1439.0>>
 * Ucircumflex (U+00DB): L<<352.0,1440.0>--<140.0,1439.0>>
 * Udieresis (U+00DC): L<<352.0,1440.0>--<140.0,1439.0>>
 * Ugrave (U+00D9): L<<352.0,1440.0>--<140.0,1439.0>>
 * Uhorn (U+01AF): L<<1515.0,1620.0>--<1352.0,1619.0>>
 * Uhorn (U+01AF): L<<352.0,1440.0>--<140.0,1439.0>>
 * Uhungarumlaut (U+0170): L<<352.0,1440.0>--<140.0,1439.0>> and 69 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 🍞 **PASS** No colinear vectors found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-SemiBoldItalic.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - uni03020301
 - five.numr
 - uni03060301
 - uni03020303
 - uni03020300
 - Ovalcondensed
 - five.dnom
 - nonmarkingreturn
 - lineverticalde
 - ncurve
 - seven.numr
 - one.numr
 - four.numr
 - nine.numr
 - two.dnom
 - mcurve
 - horncombround
 - uni03020309
 - three.numr
 - lineverticalac
 - cornercy
 - lineverticalshort
 - eight.numr
 - four.dnom
 - six.dnom
 - zero.numr
 - uni03060300
 - brevecombcy
 - ovalinner
 - two.numr
 - omegaside
 - six.numr
 - three.dnom
 - uni03060309
 - uni03060303
 - zero.dnom
 - eight.dnom
 - one.dnom
 - nine.dnom 
 - seven.dnom
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* numbersign (U+0023): X=257.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=461.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=737.0,Y=1.0 (should be at baseline 0?)
	* numbersign (U+0023): X=941.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=-1.0,Y=1.0 (should be at baseline 0?)
	* two (U+0032): X=973.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1231.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1429.0,Y=1.0 (should be at baseline 0?)
	* U (U+0055): X=327.0,Y=1439.0 (should be at cap-height 1440?)
	* W (U+0057): X=1039.0,Y=1439.0 (should be at cap-height 1440?) and 37 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* at (U+0040) contains a short segment L<<1153.0,852.0>--<1145.0,819.0>>
	* Z (U+005A) contains a short segment L<<1374.0,1406.0>--<1381.0,1440.0>>
	* Z (U+005A) contains a short segment L<<-24.0,33.0>--<-32.0,0.0>>
	* z (U+007A) contains a short segment L<<-84.0,33.0>--<-92.0,0.0>>
	* thorn (U+00FE) contains a short segment L<<248.0,1080.0>--<246.0,1080.0>>
	* OE (U+0152) contains a short segment L<<1430.0,641.0>--<1430.0,642.0>>
	* uni0162 (U+0162) contains a short segment L<<367.0,0.0>--<401.0,0.0>>
	* Uogonek (U+0172) contains a short segment B<<575.0,-30.0>-<578.0,-30.0>-<580.0,-30.0>-<583.0,-30.0>>
	* Zacute (U+0179) contains a short segment L<<1374.0,1406.0>--<1381.0,1440.0>>
	* Zacute (U+0179) contains a short segment L<<-24.0,33.0>--<-32.0,0.0>> and 11 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* eng (U+014B): L<<884.0,531.0>--<766.0,0.0>> -> L<<766.0,0.0>--<739.0,-125.0>> and eng (U+014B): L<<938.0,-181.0>--<979.0,3.0>> -> L<<979.0,3.0>--<1111.0,600.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Ohorn (U+01A0): L<<1518.0,1620.0>--<1355.0,1619.0>>
 * U (U+0055): L<<539.0,1440.0>--<327.0,1439.0>>
 * Uacute (U+00DA): L<<539.0,1440.0>--<327.0,1439.0>>
 * Ubreve (U+016C): L<<539.0,1440.0>--<327.0,1439.0>>
 * Ucircumflex (U+00DB): L<<539.0,1440.0>--<327.0,1439.0>>
 * Udieresis (U+00DC): L<<539.0,1440.0>--<327.0,1439.0>>
 * Ugrave (U+00D9): L<<539.0,1440.0>--<327.0,1439.0>>
 * Uhorn (U+01AF): L<<1742.0,1620.0>--<1580.0,1619.0>>
 * Uhorn (U+01AF): L<<539.0,1440.0>--<327.0,1439.0>>
 * Uhungarumlaut (U+0170): L<<539.0,1440.0>--<327.0,1439.0>> and 48 more. [code: found-semi-vertical]

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 💤 **SKIP** Font has version 3 post table.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 💤 **SKIP** Unfulfilled Conditions: STAT_table

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_ttf

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/OTF [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 🍞 **PASS** Maximum call depth not exceeded.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 🍞 **PASS** No deprecated CFF operators used.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 3.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 🍞 **PASS** Name table PostScript name matches CFF table FontName.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 🍞 **PASS** Font does not has spacing glyphs in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 🍞 **PASS** Font does not have mark characters not in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 🍞 **PASS** Font does not have non-mark characters in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 🍞 **PASS** No jaggy segments found.

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope[wght].ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - nonmarkingreturn 
 - .null
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* D (U+0044): X=645.0,Y=1439.0 (should be at cap-height 1440?)
	* D (U+0044): X=644.5,Y=1.5 (should be at baseline 0?)
	* M (U+004D): X=1522.0,Y=2.0 (should be at baseline 0?)
	* M (U+004D): X=1438.0,Y=2.0 (should be at baseline 0?)
	* P (U+0050): X=713.0,Y=1438.5 (should be at cap-height 1440?)
	* R (U+0052): X=713.0,Y=1438.5 (should be at cap-height 1440?)
	* S (U+0053): X=824.0,Y=-1.5 (should be at baseline 0?)
	* f (U+0066): X=373.5,Y=1442.0 (should be at cap-height 1440?)
	* h (U+0068): X=738.5,Y=1081.0 (should be at x-height 1080?)
	* n (U+006E): X=738.5,Y=1081.0 (should be at x-height 1080?) and 88 more. [code: found-misalignments]

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 💤 **SKIP** Font does not declare an optional "GDEF" table or has any GDEF glyph class definition.

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_not_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_not_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_not_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_not_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* ℹ **INFO** This font contains the following optional tables:
 - loca
 - prep
 - GPOS
 - GSUB 
 - gasp [code: optional-tables]
* 🍞 **PASS** Font contains all required tables.

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/Variable [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 🍞 **PASS** Font has **AGL recommended** names for whitespace glyphs.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 🍞 **PASS** Looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 🍞 **PASS** OS/2 xAvgCharWidth value is correct.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 2.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 🍞 **PASS** Font is not monospaced and all related metadata look good. [code: good]

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 🍞 **PASS** Entries in the "name" table for ID 6 (PostScript name) are consistent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 🍞 **PASS** 'loca' table matches numGlyphs in 'maxp' table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 🍞 **PASS** There is no unused data at the end of the glyf table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 🍞 **PASS** All glyph paths have coordinates within bounds!

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 🍞 **PASS** Glyphs do not contain duplicate components which have the same x,y coordinates.

</details>
<details>
<summary>🍞 <b>PASS:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 🍞 **PASS** Regular:wght is 400.

</details>
<details>
<summary>🍞 <b>PASS:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 🍞 **PASS** Bold:wght is 700.

</details>
<details>
<summary>🍞 <b>PASS:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 🍞 **PASS** STAT table has all necessary Axis Records

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<br>
</details>
<details>
<summary><b>[70] Manrope-Italic[wght].ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---
A font&#x27;s winAscent and winDescent values should be greater than the head table&#x27;s
yMax, abs(yMin) values. If they are less than these values, clipping can occur
on Windows platforms (https://github.com/RedHatBrand/Overpass/issues/33).
If the font includes tall/deep writing systems such as Arabic or Devanagari, the
winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.
When the win Metrics are significantly greater than the upm, the linespacing can
appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead. This
means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).</pre>

* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 2449, but got 2132 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value should be equal or greater than 630, but got 600 instead. [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - uni03020301
 - five.numr
 - uni03060301
 - uni03020303
 - uni03020300
 - Ovalcondensed
 - five.dnom
 - nonmarkingreturn
 - lineverticalde
 - ncurve
 - seven.numr
 - one.numr
 - four.numr
 - nine.numr
 - two.dnom
 - mcurve
 - horncombround
 - uni03020309
 - three.numr
 - lineverticalac
 - cornercy
 - lineverticalshort
 - eight.numr
 - four.dnom
 - six.dnom
 - zero.numr
 - uni03060300
 - brevecombcy
 - ovalinner
 - two.numr
 - omegaside
 - six.numr
 - three.dnom
 - uni03060309
 - uni03060303
 - zero.dnom
 - eight.dnom
 - one.dnom
 - nine.dnom 
 - seven.dnom
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* D (U+0044): X=844.5,Y=1439.0 (should be at cap-height 1440?)
	* D (U+0044): X=527.0,Y=1.0 (should be at baseline 0?)
	* M (U+004D): X=1390.0,Y=2.0 (should be at baseline 0?)
	* M (U+004D): X=1306.0,Y=2.0 (should be at baseline 0?)
	* P (U+0050): X=900.0,Y=1438.5 (should be at cap-height 1440?)
	* R (U+0052): X=900.0,Y=1438.5 (should be at cap-height 1440?)
	* a (U+0061): X=449.0,Y=1080.5 (should be at x-height 1080?)
	* a (U+0061): X=549.0,Y=1.0 (should be at baseline 0?)
	* e (U+0065): X=652.0,Y=-1.0 (should be at baseline 0?)
	* paragraph (U+00B6): X=756.0,Y=1438.5 (should be at cap-height 1440?) and 90 more. [code: found-misalignments]

</details>
<details>
<summary>💤 <b>SKIP:</b> Each font in set of sibling families must have the same set of vertical metrics values.</summary>

* [com.google.fonts/check/superfamily/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/vertical_metrics)
<pre>--- Rationale ---
We may want all fonts within a super-family (all sibling families) to have the
same vertical metrics so their line spacing is consistent across the
super-family.
This is an experimental extended version of
com.google.fonts/check/family/vertical_metrics and for now it will only result
in WARNs.</pre>

* 💤 **SKIP** Sibling families were not detected.

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure indic fonts have the Indian Rupee Sign glyph. </summary>

* [com.google.fonts/check/rupee](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/rupee)
<pre>--- Rationale ---
Per Bureau of Indian Standards every font supporting one of the official Indian
languages needs to include Unicode Character “₹” (U+20B9) Indian Rupee Sign.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_indic_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* 💤 **SKIP** Unfulfilled Conditions: not is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---
Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---
Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> Does the font use deprecated CFF operators or operations?</summary>

* [com.adobe.fonts/check/cff_deprecated_operators](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_deprecated_operators)
<pre>--- Rationale ---
The &#x27;dotsection&#x27; operator and the use of &#x27;endchar&#x27; to build accented characters
from the Adobe Standard Encoding Character Set (&quot;seac&quot;) are deprecated in CFF.
Adobe recommends repairing any fonts that use these, especially endchar-as-seac,
because a rendering issue was discovered in Microsoft Word with a font that
makes use of this operation. The check treats that useage as a FAIL. There are
no known ill effects of using dotsection, so that check is a WARN.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the FontName
string in the &#x27;CFF &#x27; table.
The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt
If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital
If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 10 and 16 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has an &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 10 to 16.</pre>

* 💤 **SKIP** Unfulfilled Conditions: regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---
The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.
But Dave Crossland suggested that we should enforce a required value of 700 in
this case.</pre>

* 💤 **SKIP** Unfulfilled Conditions: bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---
The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt that:
[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical, right-leaning
oblique design will have a negative slant value. This matches the scale used for
the italicAngle field in the post table.</pre>

* 💤 **SKIP** Unfulfilled Conditions: slnt_axis

</details>
<details>
<summary>💤 <b>SKIP:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_not_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_not_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_not_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_not_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that texts shape as per expectation</summary>

* [com.google.fonts/check/shaping/regression](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/regression)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
compares expected shaping against actual shaping, reporting any differences.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no forbidden glyphs are found while shaping</summary>

* [com.google.fonts/check/shaping/forbidden](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/forbidden)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports if any glyphs are generated in the shaping which should not be produced.
(For example, .notdef glyphs, visible viramas, etc.)
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that no collisions are found while shaping</summary>

* [com.google.fonts/check/shaping/collides](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Shaping Checks>.html#com.google.fonts/check/shaping/collides)
<pre>--- Rationale ---
Fonts with complex layout rules can benefit from regression tests to ensure that
the rules are behaving as designed. This checks runs a shaping test suite and
reports instances where the glyphs collide in unexpected ways.
Shaping test suites should be written by the font engineer and referenced in the
fontbakery configuration file. For more information about write shaping test
files and how to configure fontbakery to read the shaping test suites, see
https://simoncozens.github.io/tdd-for-otl/</pre>

* 💤 **SKIP** Shaping test directory not defined in configuration file

</details>
<details>
<summary>ℹ <b>INFO:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---
Depending on the typeface and coverage of a font, certain tables are recommended
for optimum quality. For example, the performance of a non-linear font is
improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced Latin
fonts should have a kern table. A gasp table is necessary if a designer wants to
influence the sizes at which grayscaling is used under Windows. Etc.</pre>

* ℹ **INFO** This font contains the following optional tables:
 - loca
 - prep
 - GPOS
 - GSUB 
 - gasp [code: optional-tables]
* 🍞 **PASS** Font contains all required tables.

</details>
<details>
<summary>ℹ <b>INFO:</b> List all superfamily filepaths</summary>

* [com.google.fonts/check/superfamily/list](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/superfamily/list)
<pre>--- Rationale ---
This is a merely informative check that lists all sibling families detected by
fontbakery.
Only the fontfiles in these directories will be considered in superfamily-level
checks.</pre>

* ℹ **INFO** ./fonts/Variable [code: family-path]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---
OS/2 and hhea vertical metric values should match. This will produce the same
linespacing on Mac, GNU+Linux and Windows.
- Mac OS X uses the hhea values.
- Windows uses OS/2 or Win, depending on the OS or fsSelection bit value.
When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.
But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.
If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains '.notdef' as its first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---
The OpenType specification v1.8.2 recommends that the first glyph is the
&#x27;.notdef&#x27; glyph without a codepoint assigned and with a drawing.
https://docs.microsoft.com/en-us/typography/opentype/spec
/recom#glyph-0-the-notdef-glyph
Pre-v1.8, it was recommended that fonts should also contain &#x27;space&#x27;, &#x27;CR&#x27; and
&#x27;.null&#x27; glyphs. This might have been relevant for MacOS 9 applications.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)
<pre>--- Rationale ---
This check enforces adherence to recommended whitespace (codepoints 0020 and
00A0) glyph names according to the Adobe Glyph List.</pre>

* 🍞 **PASS** Font has **AGL recommended** names for whitespace glyphs.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---
Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---
On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.</pre>

* 🍞 **PASS** Looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---
Microsoft&#x27;s recommendations for OpenType Fonts states the following:
&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;
https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table
In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:
https://github.com/adobe-type-tools/agl-specification</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---
Duplicate glyph names prevent font installation on Mac OS X.</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---
According to the OpenType spec:
The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* 🍞 **PASS** The unitsPerEm value (2000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 🍞 **PASS** OS/2 xAvgCharWidth value is correct.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---
The bold and italic bits in OS/2.fsSelection must match the bold and italic bits
in head.macStyle per the OpenType spec.</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---
At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.
More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.
This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.
So here we simply detect as a FAIL when a given font has no code page declared
at all.</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)
<pre>--- Rationale ---
Apple recommends against using &#x27;post&#x27; table format 3 under most circumstances,
as it can create problems with some printer drivers and PDF documents. The
savings in disk space usually does not justify the potential loss in
functionality.
Source:
https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6post.html
The CFF2 table does not contain glyph names, so variable OTFs should be allowed
to use post table version 2.
This check expects:
- Version 2 for TTF or OTF CFF2 Variable fonts
- Version 3 for OTF</pre>

* 🍞 **PASS** Font has post table version 2.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---
Check the name table for empty records, as this can cause problems in Adobe
apps.</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---
There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not truly monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)
Requirements for monospace fonts:
* post.isFixedPitch - &quot;Set to 0 if the font is proportionally spaced, non-zero
if the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm
* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm
* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2
* OS/2.xAvgCharWidth must be set accurately.
  &quot;OS/2.xAvgCharWidth is used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397
Also we should report an error for glyphs not of average width.
Please also note:
Thomas Phinney told us that a few years ago (as of December 2019), if you gave a
font a monospace flag in Panose, Microsoft Word would ignore the actual advance
widths and treat it as monospaced. Source:
https://typedrawers.com/discussion/comment/45140/#Comment_45140</pre>

* 🍞 **PASS** Font is not monospaced and all related metadata look good. [code: good]

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---
The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.
This is the TTF/CFF2 equivalent of the CFF &#x27;name/postscript_vs_cff&#x27; check.</pre>

* 🍞 **PASS** Entries in the "name" table for ID 6 (PostScript name) are consistent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 🍞 **PASS** 'loca' table matches numGlyphs in 'maxp' table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Space and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Space and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs in mark glyph class are non-spacing.</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.</pre>

* 🍞 **PASS** Font does not has spacing glyphs in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check mark characters are in GDEF mark glyph class.</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---
Mark characters should be in the GDEF mark glyph class.</pre>

* 🍞 **PASS** Font does not have mark characters not in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check GDEF mark glyph class doesn't have characters that are not marks.</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---
Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.</pre>

* 🍞 **PASS** Font does not have non-mark characters in the GDEF mark glyph class.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information? This check skips monospaced fonts as defined by post.isFixedPitch value</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table check for kerning information passed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a usable "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---
Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.
Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0 with only glyphs defined in the cmap table, which is the only one that
Windows understands (and which is also the simplest and more limited of all the
kern subtables).
Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)
Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.
Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 🍞 **PASS** There is no unused data at the end of the glyf table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 🍞 **PASS** All glyph paths have coordinates within bounds!

</details>
<details>
<summary>🍞 <b>PASS:</b> Check glyphs do not have duplicate components which have the same x,y coordinates.</summary>

* [com.google.fonts/check/glyf_non_transformed_duplicate_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_non_transformed_duplicate_components)
<pre>--- Rationale ---
There have been cases in which fonts had faulty double quote marks, with each of
them containing two single quote marks as components with the same x, y
coordinates which makes them visually look like single quote marks.
This check ensures that glyphs do not contain duplicate components which have
the same x,y coordinates.</pre>

* 🍞 **PASS** Glyphs do not contain duplicate components which have the same x,y coordinates.

</details>
<details>
<summary>🍞 <b>PASS:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght
On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth
On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> All fvar axes have a correspondent Axis Record on STAT table? </summary>

* [com.google.fonts/check/varfont/stat_axis_record_for_each_axis](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/stat.html#com.google.fonts/check/varfont/stat_axis_record_for_each_axis)
<pre>--- Rationale ---
cording to the OpenType spec, there must be an Axis Record for every axis
defined in the fvar table.
tps://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-records</pre>

* 🍞 **PASS** STAT table has all necessary Axis Records

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid feature tags?</summary>

* [com.google.fonts/check/layout_valid_feature_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_feature_tags)
<pre>--- Rationale ---
Incorrect tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid feature tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid script tags?</summary>

* [com.google.fonts/check/layout_valid_script_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_script_tags)
<pre>--- Rationale ---
Incorrect script tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid script tags were found

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have any invalid language tags?</summary>

* [com.google.fonts/check/layout_valid_language_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/layout.html#com.google.fonts/check/layout_valid_language_tags)
<pre>--- Rationale ---
Incorrect language tags can be indications of typos, leftover debugging code or
questionable approaches, or user error in the font editor. Such typos can cause
features and language support to fail to work as intended.</pre>

* 🍞 **PASS** No invalid language tags were found

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 18 | 87 | 443 | 18 | 564 | 0 |
| 0% | 2% | 8% | 39% | 2% | 50% | 0% |
