all:
	vasmm68k_mot -Fhunkexe -nosym -ldots -no-opt -wfail -o ./6 6.s


	vasmm68k_mot -devpac -nocase -Fhunk   -o ./6ks13.o ./6.s
	vlink -bamigahunk -o ./6_ks13 -s  ./6ks13.o

	vasmm68k_mot -devpac -nocase -Fhunk   -o ./selector.o ./selector.s
	vlink -bamigahunk -o ./selector -s  ./selector.o

floppy:
	mkdir -p compressedtmp
	Shrinkler --flash DFF180 6_ks13 compressedtmp/6_ks13
	Shrinkler --flash DFF180 horror13 compressedtmp/horror13
	Shrinkler --flash DFF180 THE_OUTSIDER compressedtmp/THE_OUTSIDER
	Shrinkler --flash DFF180 '4Ward-BornToRaiseTheHell - 93' 'compressedtmp/4Ward-BornToRaiseTheHell - 93'
	Shrinkler --flash DFF180 'Aggressors&Oracle-NewAlleance' 'compressedtmp/Aggressors&Oracle-NewAlleance'
	Shrinkler --flash DFF180 'Divina-HighTensionNeverBorn' 'compressedtmp/Divina-HighTensionNeverBorn'
	Shrinkler --flash DFF180 'DreamsOfPower-Born' 'compressedtmp/DreamsOfPower-Born'
	Shrinkler --flash DFF180 'Insider intro 1989' 'compressedtmp/Insider intro 1989'
	Shrinkler --flash DFF180 'TRAUMA-FirstDemo 19.05.91' 'compressedtmp/TRAUMA-FirstDemo 19.05.91'
	Shrinkler --flash DFF180 'VEGA-Plasma1st' 'compressedtmp/VEGA-Plasma1st'
	gadf -i selector -S startup-sequence compressedtmp/6_ks13 compressedtmp/horror13 compressedtmp/THE_OUTSIDER 'compressedtmp/4Ward-BornToRaiseTheHell - 93' 'compressedtmp/Aggressors&Oracle-NewAlleance' 'compressedtmp/Divina-HighTensionNeverBorn' 'compressedtmp/DreamsOfPower-Born' 'compressedtmp/Insider intro 1989' 'compressedtmp/TRAUMA-FirstDemo 19.05.91' 'compressedtmp/VEGA-Plasma1st'
	rm -rf compressedtmp

patch:
	git apply patches/0001-Fix-colors-in-bottom-bar.patch
	git apply patches/0002-fix-copperlist-in-first-line-of-canvas.patch

patchludoversion: patch
	git apply ludoversion/patches/0001-up-banner-redone.patch
	git apply ludoversion/patches/0002-ludovica-banner-down-implemented.patch

patchresistanceversion: patch
	git apply resistanceversion/patches/0001-resistance-logo-added.patch

patchcarloversion: patch
	git apply carloversion/patches/0001-add-carlo-banners.patch
	git apply carloversion/patches/0002-canvas-with-skull.patch
	git apply carloversion/patches/0003-resistance-logo-added.patch
	git apply carloversion/patches/0004-new-text.patch
	git apply carloversion/patches/0005-change-font-color-and-fix-copperlist.patch

patchitalodisco: patch
	git apply italodisco/patches/0001-start-of-italodisco.patch
	git apply italodisco/patches/0002-fix-exit-with-f1.patch
	git apply italodisco/patches/0003-text-for-page-1.patch
	git apply italodisco/patches/0004-add-shrinkler-into-makefile.patch
	git apply italodisco/patches/0005-all-prods-added.patch
	git apply italodisco/patches/0006-added-THE_OUTSIDER-and-4Ward-BornToRaiseTheHell-93.patch
	git apply italodisco/patches/0007-added-all-demos-for-italodisco.patch
	git apply italodisco/patches/0008-l33t-is-shit.mod-added.patch
	git apply italodisco/patches/0009-new-music-in-swaptro.patch

unpatch:
	git apply -R patches/0002-fix-copperlist-in-first-line-of-canvas.patch
	git apply -R patches/0001-Fix-colors-in-bottom-bar.patch

unpatchresistanceversion:
	git apply -R resistanceversion/patches/0001-resistance-logo-added.patch
	$(MAKE) unpatch

unpatchludoversion:
	git apply -R ludoversion/patches/0002-ludovica-banner-down-implemented.patch
	git apply -R ludoversion/patches/0001-up-banner-redone.patch
	$(MAKE) unpatch

unpatchcarloversion:
	git apply -R carloversion/patches/0005-change-font-color-and-fix-copperlist.patch
	git apply -R carloversion/patches/0004-new-text.patch
	git apply -R carloversion/patches/0003-resistance-logo-added.patch
	git apply -R carloversion/patches/0002-canvas-with-skull.patch
	git apply -R carloversion/patches/0001-add-carlo-banners.patch
	$(MAKE) unpatch

unpatchitalodisco:
	git apply -R italodisco/patches/0009-new-music-in-swaptro.patch
	git apply -R italodisco/patches/0008-l33t-is-shit.mod-added.patch
	git apply -R italodisco/patches/0007-added-all-demos-for-italodisco.patch
	git apply -R italodisco/patches/0006-added-THE_OUTSIDER-and-4Ward-BornToRaiseTheHell-93.patch
	git apply -R italodisco/patches/0005-all-prods-added.patch
	git apply -R italodisco/patches/0004-add-shrinkler-into-makefile.patch
	git apply -R italodisco/patches/0003-text-for-page-1.patch
	rm -f selector.o selector selector.adf
	git apply -R italodisco/patches/0002-fix-exit-with-f1.patch
	git apply -R italodisco/patches/0001-start-of-italodisco.patch
	$(MAKE) unpatch
