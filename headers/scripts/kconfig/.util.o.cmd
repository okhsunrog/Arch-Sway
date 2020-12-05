cmd_scripts/kconfig/util.o := gcc -Wp,-MMD,scripts/kconfig/.util.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -I ./scripts/kconfig -c -o scripts/kconfig/util.o /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/util.c

source_scripts/kconfig/util.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/util.c

deps_scripts/kconfig/util.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/expr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/list.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc_proto.h \

scripts/kconfig/util.o: $(deps_scripts/kconfig/util.o)

$(deps_scripts/kconfig/util.o):
