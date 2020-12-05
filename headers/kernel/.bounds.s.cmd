cmd_kernel/bounds.s := gcc -Wp,-MMD,kernel/.bounds.s.d -nostdinc -isystem /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include -I./arch/x86/include/generated -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include -I./include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi -I./include/generated/uapi -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kconfig.h -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_types.h -D__KERNEL__ -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu89 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -fno-jump-tables -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -O2 -fno-allow-store-data-races -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wimplicit-fallthrough -Wno-unused-const-variable -fomit-frame-pointer -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/danila/Downloads/pf-kernel-v5.9-pf6/= -fcf-protection=none -Wno-packed-not-aligned -I /home/danila/Downloads/pf-kernel-v5.9-pf6/. -I ./. -DKBUILD_MODFILE='"./bounds"' -DKBUILD_BASENAME='"bounds"' -DKBUILD_MODNAME='"bounds"'  -fverbose-asm -S -o kernel/bounds.s /home/danila/Downloads/pf-kernel-v5.9-pf6/kernel/bounds.c

source_kernel/bounds.s := /home/danila/Downloads/pf-kernel-v5.9-pf6/kernel/bounds.c

deps_kernel/bounds.s := \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/nr/cpus.h) \
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
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/page-flags.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/idle/page/tracking.h) \
    $(wildcard include/config/64bit.h) \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/hugetlb/page.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
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
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/stringify.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/instrumentation.h \
    $(wildcard include/config/debug/entry.h) \
    $(wildcard include/config/stack/validation.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
  arch/x86/include/generated/asm/rwonce.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/rwonce.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kasan-checks.h \
    $(wildcard include/config/kasan.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kcsan-checks.h \
    $(wildcard include/config/kcsan.h) \
    $(wildcard include/config/kcsan/ignore/atomics.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/preempt/rt.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/limits.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/limits.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/limits.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/linkage.h \
    $(wildcard include/config/arch/use/sym/annotations.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/export.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bitops.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bits.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/const.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/const.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/const.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/bits.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/build_bug.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/alternative.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/asm.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/rmwcc.h \
    $(wildcard include/config/cc/has/asm/goto.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/barrier.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/barrier.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/sched.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/arch_hweight.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cpufeatures.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/paravirt.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/disabled-features.h \
    $(wildcard include/config/x86/smap.h) \
    $(wildcard include/config/x86/umip.h) \
    $(wildcard include/config/x86/intel/memory/protection/keys.h) \
    $(wildcard include/config/x86/5level.h) \
    $(wildcard include/config/page/table/isolation.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/const_hweight.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/instrumented-atomic.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/instrumented.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/instrumented-non-atomic.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/instrumented-lock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/le.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/byteorder.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/byteorder/little_endian.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/byteorder/little_endian.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/swab.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/swab.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/swab.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/byteorder/generic.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/typecheck.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/dynamic/debug/core.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kern_levels.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/kernel.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/sysinfo.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/ratelimit_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/param.h \
  arch/x86/include/generated/uapi/asm/param.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/param.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/spinlock_types.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/spinlock_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/qspinlock_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/qrwlock_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/lockdep_types.h \
    $(wildcard include/config/prove/raw/lock/nesting.h) \
    $(wildcard include/config/preempt/lock.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rwlock_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/div64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/div64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mmdebug.h \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/shadow/call/stack.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kbuild.h \

kernel/bounds.s: $(deps_kernel/bounds.s)

$(deps_kernel/bounds.s):
