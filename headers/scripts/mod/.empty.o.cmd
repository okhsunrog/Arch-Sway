cmd_scripts/mod/empty.o := gcc -Wp,-MMD,scripts/mod/.empty.o.d -nostdinc -isystem /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include -I./arch/x86/include/generated -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include -I./include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi -I./include/generated/uapi -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kconfig.h -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_types.h -D__KERNEL__ -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu89 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -fno-jump-tables -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -O2 -fno-allow-store-data-races -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wimplicit-fallthrough -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/danila/Downloads/pf-kernel-v5.9-pf6/= -fcf-protection=none -Wno-packed-not-aligned -I /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod -I ./scripts/mod    -DKBUILD_MODFILE='"scripts/mod/empty"' -DKBUILD_BASENAME='"empty"' -DKBUILD_MODNAME='"empty"' -c -o scripts/mod/empty.o /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/empty.c

source_scripts/mod/empty.o := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/empty.c

deps_scripts/mod/empty.o := \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kconfig.h \
    $(wildcard include/config/cc/version/text.h) \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_attributes.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \

scripts/mod/empty.o: $(deps_scripts/mod/empty.o)

$(deps_scripts/mod/empty.o):
