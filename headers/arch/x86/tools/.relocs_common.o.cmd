cmd_arch/x86/tools/relocs_common.o := gcc -Wp,-MMD,arch/x86/tools/.relocs_common.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I/home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include  -I ./arch/x86/tools -c -o arch/x86/tools/relocs_common.o /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/tools/relocs_common.c

source_arch/x86/tools/relocs_common.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/tools/relocs_common.c

deps_arch/x86/tools/relocs_common.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/tools/relocs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include/tools/le_byteshift.h \

arch/x86/tools/relocs_common.o: $(deps_arch/x86/tools/relocs_common.o)

$(deps_arch/x86/tools/relocs_common.o):
