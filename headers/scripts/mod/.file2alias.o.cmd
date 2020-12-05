cmd_scripts/mod/file2alias.o := gcc -Wp,-MMD,scripts/mod/.file2alias.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -I ./scripts/mod -c -o scripts/mod/file2alias.o /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/file2alias.c

source_scripts/mod/file2alias.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/file2alias.c

deps_scripts/mod/file2alias.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/modpost.h \
  scripts/mod/elfconfig.h \
  scripts/mod/devicetable-offsets.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/../../include/linux/mod_devicetable.h \

scripts/mod/file2alias.o: $(deps_scripts/mod/file2alias.o)

$(deps_scripts/mod/file2alias.o):
