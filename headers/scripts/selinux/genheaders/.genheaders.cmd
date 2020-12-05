cmd_scripts/selinux/genheaders/genheaders := gcc -Wp,-MMD,scripts/selinux/genheaders/.genheaders.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/security/selinux/include  -I ./scripts/selinux/genheaders   -o scripts/selinux/genheaders/genheaders /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/selinux/genheaders/genheaders.c   

source_scripts/selinux/genheaders/genheaders := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/selinux/genheaders/genheaders.c

deps_scripts/selinux/genheaders/genheaders := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/security/selinux/include/classmap.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/capability.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/posix_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/stddef.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/socket.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/security/selinux/include/initial_sid_to_string.h \

scripts/selinux/genheaders/genheaders: $(deps_scripts/selinux/genheaders/genheaders)

$(deps_scripts/selinux/genheaders/genheaders):
