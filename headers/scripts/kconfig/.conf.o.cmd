cmd_scripts/kconfig/conf.o := gcc -Wp,-MMD,scripts/kconfig/.conf.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -I ./scripts/kconfig -c -o scripts/kconfig/conf.o /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/conf.c

source_scripts/kconfig/conf.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/conf.c

deps_scripts/kconfig/conf.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/expr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/list.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc_proto.h \

scripts/kconfig/conf.o: $(deps_scripts/kconfig/conf.o)

$(deps_scripts/kconfig/conf.o):
