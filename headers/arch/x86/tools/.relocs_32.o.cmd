cmd_arch/x86/tools/relocs_32.o := gcc -Wp,-MMD,arch/x86/tools/.relocs_32.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I/home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include  -I ./arch/x86/tools -c -o arch/x86/tools/relocs_32.o /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/tools/relocs_32.c

source_arch/x86/tools/relocs_32.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/tools/relocs_32.c

deps_arch/x86/tools/relocs_32.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/tools/relocs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/tools/include/tools/le_byteshift.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/tools/relocs.c \

arch/x86/tools/relocs_32.o: $(deps_arch/x86/tools/relocs_32.o)

$(deps_arch/x86/tools/relocs_32.o):
