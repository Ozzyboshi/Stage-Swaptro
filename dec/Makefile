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

patchozzyversion: patch
	git apply ozzyversion/patches/0001-stage-logo-defaced-by-resistance.patch
	git apply ozzyversion/patches/0002-adjust-copperlist-color-for-resistance-image.patch
	git apply ozzyversion/patches/0003-new-patch-for-swapping-color-zero-with-color-15-in-r.patch

unpatch:
	git apply -R patches/0002-fix-copperlist-in-first-line-of-canvas.patch
	git apply -R patches/0001-Fix-colors-in-bottom-bar.patch

unpatchozzyversion:
	git apply -R ozzyversion/patches/0003-new-patch-for-swapping-color-zero-with-color-15-in-r.patch
	git apply -R ozzyversion/patches/0002-adjust-copperlist-color-for-resistance-image.patch
	git apply -R ozzyversion/patches/0001-stage-logo-defaced-by-resistance.patch
	$(MAKE) unpatch

unpatchludoversion:
	git apply -R ludoversion/patches/0002-ludovica-banner-down-implemented.patch
	git apply -R ludoversion/patches/0001-up-banner-redone.patch
	$(MAKE) unpatch
