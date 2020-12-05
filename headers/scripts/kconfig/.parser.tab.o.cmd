cmd_scripts/kconfig/parser.tab.o := gcc -Wp,-MMD,scripts/kconfig/.parser.tab.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -I /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig -I ./scripts/kconfig -c -o scripts/kconfig/parser.tab.o scripts/kconfig/parser.tab.c

source_scripts/kconfig/parser.tab.o := scripts/kconfig/parser.tab.c

deps_scripts/kconfig/parser.tab.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/expr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/list.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc_proto.h \
  scripts/kconfig/parser.tab.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/menu.c \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lkc.h \

scripts/kconfig/parser.tab.o: $(deps_scripts/kconfig/parser.tab.o)

$(deps_scripts/kconfig/parser.tab.o):
