cmd_scripts/mod/mk_elfconfig := gcc -Wp,-MMD,scripts/mod/.mk_elfconfig.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -I ./scripts/mod   -o scripts/mod/mk_elfconfig /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/mk_elfconfig.c   

source_scripts/mod/mk_elfconfig := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/mk_elfconfig.c

deps_scripts/mod/mk_elfconfig := \

scripts/mod/mk_elfconfig: $(deps_scripts/mod/mk_elfconfig)

$(deps_scripts/mod/mk_elfconfig):
