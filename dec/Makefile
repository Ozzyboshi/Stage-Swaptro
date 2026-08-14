all:
	vasmm68k_mot -Fhunkexe -nosym -ldots -no-opt -wfail -o ./6 6.s


	vasmm68k_mot -devpac -nocase -Fhunk   -o ./6ks13.o ./6.s
	vlink -bamigahunk -o ./6_ks13 -s  ./6ks13.o

floppy:
	exe2adf -i 6_ks13 -a stage-swaptro_13.adf

patch:
	git apply patches/0001-Fix-colors-in-bottom-bar.patch
	git apply patches/0002-fix-copperlist-in-first-line-of-canvas.patch

patchozzyversion: patch
	git apply ozzyversion/patches/0001-stage-logo-defaced-by-resistance.patch

unpatch:
	git apply -R patches/0002-fix-copperlist-in-first-line-of-canvas.patch
	git apply -R patches/0001-Fix-colors-in-bottom-bar.patch

unpatchozzyversion: unpatch
	git apply -R ozzyversion/patches/0001-stage-logo-defaced-by-resistance.patch
