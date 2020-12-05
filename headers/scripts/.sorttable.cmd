cmd_scripts/sorttable := gcc -Wp,-MMD,scripts/.sorttable.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -I/home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/tools/arch/x86/include -DUNWINDER_ORC_ENABLED -I ./scripts   -o scripts/sorttable /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/sorttable.c   -lpthread

source_scripts/sorttable := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/sorttable.c

deps_scripts/sorttable := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include/tools/be_byteshift.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include/tools/le_byteshift.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/sorttable.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/tools/arch/x86/include/asm/orc_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include/linux/types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include/linux/compiler.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include/linux/compiler-gcc.h \

scripts/sorttable: $(deps_scripts/sorttable)

$(deps_scripts/sorttable):
