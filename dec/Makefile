all:
	vasmm68k_mot -Fhunkexe -nosym -ldots -no-opt -wfail -o ./6 6.s


	vasmm68k_mot -devpac -nocase -Fhunk   -o ./6ks13.o ./6.s
	vlink -bamigahunk -o ./6_ks13 -s  ./6ks13.o

floppy:
	exe2adf -i 6_ks13 -a stage-swaptro_13.adf

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
	git apply -R carloversion/patches/0002-canvas-with-skull.patch
	git apply -R carloversion/patches/0001-add-carlo-banners.patch
	git apply -R carloversion/patches/0003-resistance-logo-added.patch
	$(MAKE) unpatch
