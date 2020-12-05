cmd_scripts/kconfig/expr.o := gcc -Wp,-MMD,scripts/kconfig/.expr.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -I ./scripts/kconfig -c -o scripts/kconfig/expr.o /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/expr.c

source_scripts/kconfig/expr.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/expr.c

deps_scripts/kconfig/expr.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/expr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/list.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc_proto.h \

scripts/kconfig/expr.o: $(deps_scripts/kconfig/expr.o)

$(deps_scripts/kconfig/expr.o):
