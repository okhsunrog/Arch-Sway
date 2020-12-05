cmd_scripts/kallsyms := gcc -Wp,-MMD,scripts/.kallsyms.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -I ./scripts   -o scripts/kallsyms /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kallsyms.c   

source_scripts/kallsyms := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/kallsyms.c

deps_scripts/kallsyms := \

scripts/kallsyms: $(deps_scripts/kallsyms)

$(deps_scripts/kallsyms):
