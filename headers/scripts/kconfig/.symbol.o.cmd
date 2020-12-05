cmd_scripts/kconfig/symbol.o := gcc -Wp,-MMD,scripts/kconfig/.symbol.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -I ./scripts/kconfig -c -o scripts/kconfig/symbol.o /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/symbol.c

source_scripts/kconfig/symbol.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/symbol.c

deps_scripts/kconfig/symbol.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/expr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/list.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc_proto.h \

scripts/kconfig/symbol.o: $(deps_scripts/kconfig/symbol.o)

$(deps_scripts/kconfig/symbol.o):
