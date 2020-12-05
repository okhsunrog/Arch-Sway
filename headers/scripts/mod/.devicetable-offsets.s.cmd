cmd_scripts/mod/devicetable-offsets.s := gcc -Wp,-MMD,scripts/mod/.devicetable-offsets.s.d -nostdinc -isystem /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include -I./arch/x86/include/generated -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include -I./include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi -I./include/generated/uapi -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kconfig.h -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_types.h -D__KERNEL__ -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu89 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -fno-jump-tables -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -O2 -fno-allow-store-data-races -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wimplicit-fallthrough -Wno-unused-const-variable -fomit-frame-pointer -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/danila/Downloads/pf-kernel-v5.9-pf6/= -fcf-protection=none -Wno-packed-not-aligned -I /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod -I ./scripts/mod -DKBUILD_MODFILE='"scripts/mod/devicetable-offsets"' -DKBUILD_BASENAME='"devicetable_offsets"' -DKBUILD_MODNAME='"devicetable_offsets"'  -fverbose-asm -S -o scripts/mod/devicetable-offsets.s /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/devicetable-offsets.c

source_scripts/mod/devicetable-offsets.s := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/mod/devicetable-offsets.c

deps_scripts/mod/devicetable-offsets.s := \
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
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kbuild.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mod_devicetable.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/types.h \
  arch/x86/include/generated/uapi/asm/types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/int-ll64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/int-ll64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/bitsperlong.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitsperlong.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/bitsperlong.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/posix_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/stddef.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/stddef.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/posix_types_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/posix_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/uuid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/uuid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
    $(wildcard include/config/kasan.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
  arch/x86/include/generated/asm/rwonce.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/rwonce.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kasan-checks.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kcsan-checks.h \
    $(wildcard include/config/kcsan.h) \
    $(wildcard include/config/kcsan/ignore/atomics.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/string.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/string.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
    $(wildcard include/config/have/arch/jump/label/relative.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/jump_label.h \
    $(wildcard include/config/x86/64.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/asm.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/stringify.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
    $(wildcard include/config/x86/p6/nop.h) \

scripts/mod/devicetable-offsets.s: $(deps_scripts/mod/devicetable-offsets.s)

$(deps_scripts/mod/devicetable-offsets.s):
