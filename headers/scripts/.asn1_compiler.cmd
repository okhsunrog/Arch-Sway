cmd_scripts/asn1_compiler := gcc -Wp,-MMD,scripts/.asn1_compiler.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include -I ./scripts   -o scripts/asn1_compiler /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/asn1_compiler.c   

source_scripts/asn1_compiler := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/asn1_compiler.c

deps_scripts/asn1_compiler := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/asn1_ber_bytecode.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/asn1.h \

scripts/asn1_compiler: $(deps_scripts/asn1_compiler)

$(deps_scripts/asn1_compiler):
