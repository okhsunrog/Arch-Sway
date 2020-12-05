cmd_scripts/mod/sumversion.o := gcc -Wp,-MMD,scripts/mod/.sumversion.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -I ./scripts/mod -c -o scripts/mod/sumversion.o /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/sumversion.c

source_scripts/mod/sumversion.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/sumversion.c

deps_scripts/mod/sumversion.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/modpost.h \
  scripts/mod/elfconfig.h \

scripts/mod/sumversion.o: $(deps_scripts/mod/sumversion.o)

$(deps_scripts/mod/sumversion.o):
