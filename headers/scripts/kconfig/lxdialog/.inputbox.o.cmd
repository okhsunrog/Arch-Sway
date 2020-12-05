cmd_scripts/kconfig/lxdialog/inputbox.o := gcc -Wp,-MMD,scripts/kconfig/lxdialog/.inputbox.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -I ./scripts/kconfig -c -o scripts/kconfig/lxdialog/inputbox.o /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lxdialog/inputbox.c

source_scripts/kconfig/lxdialog/inputbox.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lxdialog/inputbox.c

deps_scripts/kconfig/lxdialog/inputbox.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kconfig/lxdialog/dialog.h \

scripts/kconfig/lxdialog/inputbox.o: $(deps_scripts/kconfig/lxdialog/inputbox.o)

$(deps_scripts/kconfig/lxdialog/inputbox.o):
