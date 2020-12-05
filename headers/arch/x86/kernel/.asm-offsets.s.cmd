cmd_arch/x86/kernel/asm-offsets.s := gcc -Wp,-MMD,arch/x86/kernel/.asm-offsets.s.d -nostdinc -isystem /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include -I./arch/x86/include/generated -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include -I./include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi -I./include/generated/uapi -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kconfig.h -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_types.h -D__KERNEL__ -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu89 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -fno-jump-tables -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -O2 -fno-allow-store-data-races -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wimplicit-fallthrough -Wno-unused-const-variable -fomit-frame-pointer -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/danila/Downloads/pf-kernel-v5.9-pf6/= -fcf-protection=none -Wno-packed-not-aligned -I /home/danila/Downloads/pf-kernel-v5.9-pf6/. -I ./. -DKBUILD_MODFILE='"./asm-offsets"' -DKBUILD_BASENAME='"asm_offsets"' -DKBUILD_MODNAME='"asm_offsets"'  -fverbose-asm -S -o arch/x86/kernel/asm-offsets.s /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c

source_arch/x86/kernel/asm-offsets.s := /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c

deps_arch/x86/kernel/asm-offsets.s := \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/x86/32.h) \
    $(wildcard include/config/stackprotector.h) \
    $(wildcard include/config/ia32/emulation.h) \
    $(wildcard include/config/paravirt/xxl.h) \
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
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/crypto.h \
    $(wildcard include/config/crypto/stats.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/atomic.h \
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
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/posix_types_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/posix_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/atomic.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
  arch/x86/include/generated/asm/rwonce.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/rwonce.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kasan-checks.h \
    $(wildcard include/config/kasan.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kcsan-checks.h \
    $(wildcard include/config/kcsan.h) \
    $(wildcard include/config/kcsan/ignore/atomics.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/smp.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/stringify.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/asm.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cmpxchg.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cpufeatures.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/cmov.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/paravirt.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/disabled-features.h \
    $(wildcard include/config/x86/smap.h) \
    $(wildcard include/config/x86/umip.h) \
    $(wildcard include/config/x86/intel/memory/protection/keys.h) \
    $(wildcard include/config/x86/5level.h) \
    $(wildcard include/config/page/table/isolation.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cmpxchg_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/rmwcc.h \
    $(wildcard include/config/cc/has/asm/goto.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/barrier.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/barrier.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/atomic64_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/atomic-arch-fallback.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/atomic-instrumented.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/build_bug.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/instrumented.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/atomic-long.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/preempt/rt.h) \
    $(wildcard include/config/mmu.h) \
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
    $(wildcard include/config/x86/alignment/16.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bitops.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bits.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/const.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/const.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/const.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/bits.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/bitops.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/sched.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/arch_hweight.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/const_hweight.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bitops/instrumented-atomic.h \
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
    $(wildcard include/config/nr/cpus.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/qrwlock_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/lockdep_types.h \
    $(wildcard include/config/prove/raw/lock/nesting.h) \
    $(wildcard include/config/preempt/lock.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rwlock_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/div64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/div64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/instrumentation.h \
    $(wildcard include/config/debug/entry.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/refcount.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/memcg/kmem.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/numa.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/gfp.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/contig/alloc.h) \
    $(wildcard include/config/cma.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/shadow/call/stack.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/transparent/hugepage.h) \
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
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/spinlock.h \
    $(wildcard include/config/preemption.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/trace/preempt/toggle.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/preempt.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/threads.h \
    $(wildcard include/config/base/small.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/restart_block.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/time64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/math64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/time64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/time.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/time_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/current.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/vm86.h) \
    $(wildcard include/config/x86/iopl/ioperm.h) \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/compat.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/page.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
    $(wildcard include/config/dynamic/physical/mask.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mem_encrypt.h \
    $(wildcard include/config/arch/has/mem/encrypt.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/mem_encrypt.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/bootparam.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/screen_info.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/screen_info.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/apm_bios.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/apm_bios.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/ioctl.h \
  arch/x86/include/generated/uapi/asm/ioctl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/ioctl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/ioctl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/edd.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/edd.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/ist.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/ist.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/video/edid.h \
    $(wildcard include/config/x86.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/video/edid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/dynamic/memory/layout.h) \
    $(wildcard include/config/randomize/base.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/kaslr.h \
    $(wildcard include/config/randomize/memory.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/page_64.h \
    $(wildcard include/config/x86/vsyscall/emulation.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/range.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/memory_model.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/pfn.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/getorder.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/feature/names.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/processor.h \
    $(wildcard include/config/x86/vmx/feature/names.h) \
    $(wildcard include/config/x86/debugctlmsr.h) \
    $(wildcard include/config/cpu/sup/amd.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/processor-flags.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/processor-flags.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/math_emu.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/ptrace.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/segment.h \
    $(wildcard include/config/xen/pv.h) \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/ptrace.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/ptrace-abi.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/sigcontext.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/have/arch/userfaultfd/wp.h) \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/pgtable_64_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/sparsemem.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/msr.h \
    $(wildcard include/config/tracepoints.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/msr-index.h \
  arch/x86/include/generated/uapi/asm/errno.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/errno.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/errno-base.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cpumask.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bitmap.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/string.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/string.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
    $(wildcard include/config/have/arch/jump/label/relative.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/jump_label.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/msr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/tracepoint-defs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/static_key.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/errno.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/errno.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/desc_defs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/special_insns.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/irqflags.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/nospec-branch.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/frame.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/alternative-asm.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/msr-index.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/unwind_hints.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/orc_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/fpu/types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/vmxfeatures.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/vdso/processor.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/personality.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/personality.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/err.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bottom_half.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/lockdep.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/smp_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/debug/nmi/selftest.h) \
  arch/x86/include/generated/asm/mmiowb.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/mmiowb.h \
    $(wildcard include/config/mmiowb.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/spinlock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/qspinlock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/qspinlock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/qrwlock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/qrwlock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rwlock.h \
    $(wildcard include/config/preempt.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
    $(wildcard include/config/generic/lockbreak.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/wait.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/wait.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
    $(wildcard include/config/numa/keep/meminfo.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/seqlock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/osq_lock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/nodemask.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/page-flags-layout.h \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/kasan/sw/tags.h) \
  include/generated/bounds.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mm_types.h \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mm_types_task.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/tlbbatch.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/auxvec.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/auxvec.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/auxvec.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rbtree.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu/generic.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tasks/rcu/trace.h) \
    $(wildcard include/config/tasks/rude/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rcutree.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/debug/rwsems.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/completion.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/swait.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/uprobes.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/notifier.h \
    $(wildcard include/config/tree/srcu.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/srcu.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/ktime.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
    $(wildcard include/config/posix/timers.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/time32.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/timex.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/timex.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/timex.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/time32.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/time.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/jiffies.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/jiffies.h \
  include/generated/timeconst.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/vdso/ktime.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/timekeeping.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/timekeeping32.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects/free.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rcu_segcblist.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/srcutree.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rcu_node_tree.h \
    $(wildcard include/config/rcu/fanout.h) \
    $(wildcard include/config/rcu/fanout/leaf.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/mmu.h \
    $(wildcard include/config/modify/ldt/syscall.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/idle/page/tracking.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/mmzone.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/mmzone_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/arch_topology.h \
    $(wildcard include/config/generic/arch/topology.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/topology.h \
    $(wildcard include/config/sched/mc/prio.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
    $(wildcard include/config/x86/io/apic.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/mpspec_def.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/x86_init.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/apicdef.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/topology.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/overflow.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/percpu-refcount.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kasan.h \
    $(wildcard include/config/kasan/vmalloc.h) \
    $(wildcard include/config/kasan/generic.h) \
    $(wildcard include/config/kasan/inline.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/uclamp/task.h) \
    $(wildcard include/config/uclamp/buckets/count.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/tasks/trace/rcu.h) \
    $(wildcard include/config/psi.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/arch/has/scaled/cputime.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/posix/cputimers.h) \
    $(wildcard include/config/posix/cpu/timers/task/work.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/io/uring.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/x86/cpu/resctrl.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/rseq.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/gcc/plugin/stackleak.h) \
    $(wildcard include/config/x86/mce.h) \
    $(wildcard include/config/arch/task/struct/on/stack.h) \
    $(wildcard include/config/debug/rseq.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/sched.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/pid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rculist.h \
    $(wildcard include/config/prove/rcu/list.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sem.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/sem.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/ipc.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/highuid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rhashtable-types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/ipc.h \
  arch/x86/include/generated/uapi/asm/ipcbuf.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/ipcbuf.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/sembuf.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/shm.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/shm.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/hugetlb_encode.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/shmbuf.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/shmbuf.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/shmparam.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kcov.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/kcov.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/plist.h \
    $(wildcard include/config/debug/plist.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/hrtimer_defs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/timerqueue.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/seccomp.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/seccomp.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/unistd.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/unistd.h \
  arch/x86/include/generated/uapi/asm/unistd_64.h \
  arch/x86/include/generated/asm/unistd_64_x32.h \
  arch/x86/include/generated/asm/unistd_32_ia32.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/ia32_unistd.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/seccomp.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/unistd.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/resource.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/resource.h \
  arch/x86/include/generated/uapi/asm/resource.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/resource.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/resource.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/latencytop.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/prio.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/signal_types.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/signal.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/signal.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/signal.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/signal-defs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/siginfo.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/siginfo.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/posix-timers.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/alarmtimer.h \
    $(wildcard include/config/rtc/class.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/task_work.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/rseq.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kcsan.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/hardirq.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/ftrace_irq.h \
    $(wildcard include/config/hwlat/tracer.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/hardirq.h \
    $(wildcard include/config/kvm/intel.h) \
    $(wildcard include/config/have/kvm.h) \
    $(wildcard include/config/x86/thermal/vector.h) \
    $(wildcard include/config/x86/mce/threshold.h) \
    $(wildcard include/config/x86/mce/amd.h) \
    $(wildcard include/config/x86/hv/callback/vector.h) \
    $(wildcard include/config/hyperv.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/suspend.h \
    $(wildcard include/config/vt.h) \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hibernation/snapshot/dev.h) \
    $(wildcard include/config/pm/sleep/debug.h) \
    $(wildcard include/config/pm/autosleep.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/swap.h \
    $(wildcard include/config/device/private.h) \
    $(wildcard include/config/migration.h) \
    $(wildcard include/config/frontswap.h) \
    $(wildcard include/config/memcg/swap.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/memcontrol.h \
    $(wildcard include/config/cgroup/writeback.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/cgroup.h \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/sock/cgroup/data.h) \
    $(wildcard include/config/cgroup/net/prio.h) \
    $(wildcard include/config/cgroup/net/classid.h) \
    $(wildcard include/config/cgroup/data.h) \
    $(wildcard include/config/cgroup/bpf.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/cgroupstats.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/taskstats.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/fs.h \
    $(wildcard include/config/read/only/thp/for/fs.h) \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/fs/verity.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/wait_bit.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kdev_t.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/kdev_t.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/dcache.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rculist_bl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/list_bl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bit_spinlock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/path.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/stat.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/stat.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/stat.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/list_lru.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/shrinker.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/radix-tree.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/xarray.h \
    $(wildcard include/config/xarray/multi.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kconfig.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/local_lock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/local_lock_internal.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/capability.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/capability.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/semaphore.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/fcntl.h \
    $(wildcard include/config/arch/32bit/off/t.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/fcntl.h \
  arch/x86/include/generated/uapi/asm/fcntl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/fcntl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/openat2.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/migrate_mode.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/percpu-rwsem.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rcuwait.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/signal.h \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/stack/growsup.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/signal.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/jobctl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/task.h \
    $(wildcard include/config/have/exit/thread.h) \
    $(wildcard include/config/arch/wants/dynamic/task/struct.h) \
    $(wildcard include/config/have/arch/thread/struct/whitelist.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/uaccess.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/arch/has/copy/mc.h) \
    $(wildcard include/config/x86/intel/usercopy.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/smap.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/extable.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/uaccess_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/key.h \
    $(wildcard include/config/key/notifications.h) \
    $(wildcard include/config/net.h) \
    $(wildcard include/config/sysctl.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sysctl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/sysctl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/user.h \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/watch/queue.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/ratelimit.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rcu_sync.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/delayed_call.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/uuid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/uuid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/errseq.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/ioprio.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/rt.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/iocontext.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/fs_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/fs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/percpu_counter.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/dqblk_xfs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/dqblk_v1.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/dqblk_v2.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/dqblk_qtree.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/projid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/quota.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/nfs_fs_i.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/seq_file.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/idr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/ns_common.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/nsproxy.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/user_namespace.h \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/persistent/keyrings.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kref.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kernel_stat.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/irq/timings.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/irqreturn.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/irqnr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/irqnr.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/irq.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/pci/msi.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/sections.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/sections.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/cgroup-defs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/u64_stats_sync.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/local64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/local64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/local.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bpf-cgroup.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bpf.h \
    $(wildcard include/config/bpf/jit.h) \
    $(wildcard include/config/bpf/stream/parser.h) \
    $(wildcard include/config/inet.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/bpf.h \
    $(wildcard include/config/efficient/unaligned/access.h) \
    $(wildcard include/config/ip/route/classid.h) \
    $(wildcard include/config/bpf/kprobe/override.h) \
    $(wildcard include/config/function/error/injection.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/bpf/lirc/mode2.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/bpf_common.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/file.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/rbtree_latch.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/module.h \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/bpf/events.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/kprobes.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kmod.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/umh.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/elf.h \
    $(wildcard include/config/arch/use/gnu/property.h) \
    $(wildcard include/config/arch/have/elf/prot.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/elf.h \
    $(wildcard include/config/x86/x32/abi.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/user.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/user_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/fsgsbase.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/vdso.h \
    $(wildcard include/config/x86/x32.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/elf.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/elf-em.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sysfs.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kobject_ns.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/error-injection.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/error-injection.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/module.h \
    $(wildcard include/config/unwinder/orc.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/orc_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kallsyms.h \
    $(wildcard include/config/kallsyms/all.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mm.h \
    $(wildcard include/config/have/arch/mmap/rnd/bits.h) \
    $(wildcard include/config/have/arch/mmap/rnd/compat/bits.h) \
    $(wildcard include/config/arch/uses/high/vma/flags.h) \
    $(wildcard include/config/arch/has/pkeys.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/sparc64.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/dev/pagemap/ops.h) \
    $(wildcard include/config/pci/p2pdma.h) \
    $(wildcard include/config/arch/has/pte/special.h) \
    $(wildcard include/config/arch/has/pte/devmap.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/init/on/alloc/default/on.h) \
    $(wildcard include/config/init/on/free/default/on.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/arch/has/set/direct/map.h) \
    $(wildcard include/config/hugetlbfs.h) \
    $(wildcard include/config/mapping/dirty/helpers.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mmap_lock.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/page_ext.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/arch/stackwalk.h) \
    $(wildcard include/config/have/reliable/stacktrace.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/stackdepot.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/page_ref.h \
    $(wildcard include/config/debug/page/ref.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/memremap.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/ioport.h \
    $(wildcard include/config/io/strict/devmem.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sizes.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/pgtable.h \
    $(wildcard include/config/highpte.h) \
    $(wildcard include/config/have/arch/transparent/hugepage/pud.h) \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/enable/thp/migration.h) \
    $(wildcard include/config/have/arch/huge/vmap.h) \
    $(wildcard include/config/x86/espfix64.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/pgtable.h \
    $(wildcard include/config/debug/wx.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/fpu/xstate.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/fpu/api.h \
    $(wildcard include/config/x86/debug/fpu.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/pgtable_uffd.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/pgtable_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/x86/intel/mid.h) \
    $(wildcard include/config/acpi/apei/ghes.h) \
    $(wildcard include/config/intel/txt.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/vsyscall.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/fixmap.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/pgtable-invert.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/huge_mm.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/coredump.h \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/psi_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kthread.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cgroup/hugetlb.h) \
    $(wildcard include/config/cgroup/pids.h) \
    $(wildcard include/config/cgroup/rdma.h) \
    $(wildcard include/config/cgroup/debug.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/page_counter.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/vmpressure.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/eventfd.h \
    $(wildcard include/config/eventfd.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/writeback.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/flex_proportions.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/backing-dev-defs.h \
    $(wildcard include/config/debug/fs.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup/iocost.h) \
    $(wildcard include/config/blk/inline/encryption.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bvec.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/blk-cgroup.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/blkdev.h \
    $(wildcard include/config/blk/rq/alloc/time.h) \
    $(wildcard include/config/blk/wbt.h) \
    $(wildcard include/config/blk/dev/zoned.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/blk/dev/bsg.h) \
    $(wildcard include/config/blk/dev/throttling.h) \
    $(wildcard include/config/blk/debug/fs.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/clock.h \
    $(wildcard include/config/have/unstable/sched/clock.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/major.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/genhd.h \
    $(wildcard include/config/fail/make/request.h) \
    $(wildcard include/config/cdrom.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/energy/model.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/ops.h) \
    $(wildcard include/config/dma/declare/coherent.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/arch/has/sync/dma/for/device.h) \
    $(wildcard include/config/arch/has/sync/dma/for/cpu.h) \
    $(wildcard include/config/arch/has/sync/dma/for/cpu/all.h) \
    $(wildcard include/config/dma/ops/bypass.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/dev_printk.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/energy_model.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/cpufreq.h \
    $(wildcard include/config/cpu/freq.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/topology.h \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/debug.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/idle.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/klist.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/pm.h \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/device/bus.h \
    $(wildcard include/config/acpi.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/device/class.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/device/driver.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/device.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/pm_wakeup.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/pagemap.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/highmem.h \
    $(wildcard include/config/debug/highmem.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cacheflush.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/cacheflush.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/kmap_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/kmap_types.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/hugetlb_inline.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/mempool.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bio.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/bsg.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/bsg.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/sgl/alloc.h) \
    $(wildcard include/config/arch/no/sg/chain.h) \
    $(wildcard include/config/sg/pool.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/io.h \
    $(wildcard include/config/mtrr.h) \
    $(wildcard include/config/x86/pat.h) \
  arch/x86/include/generated/asm/early_ioremap.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/early_ioremap.h \
    $(wildcard include/config/generic/early/ioremap.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/generic/iomap.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/io.h \
    $(wildcard include/config/generic/ioremap.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/logic_pio.h \
    $(wildcard include/config/indirect/pio.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/fwnode.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/vmalloc.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/vmalloc.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/pgtable_areas.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/blkzoned.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/elevator.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/hashtable.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/node.h \
    $(wildcard include/config/hmem/reporting.h) \
    $(wildcard include/config/memory/hotplug/sparse.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/freezer.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kbuild.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/sigframe.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/ucontext.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/ucontext.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compat.h \
    $(wildcard include/config/arch/has/syscall/wrapper.h) \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/socket.h \
  arch/x86/include/generated/uapi/asm/socket.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/socket.h \
  arch/x86/include/generated/uapi/asm/sockios.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/asm-generic/sockios.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/sockios.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/uio.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/uio.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/socket.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/if.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/libc-compat.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/hdlc/ioctl.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/aio_abi.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/compat.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/sched/task_stack.h \
    $(wildcard include/config/debug/stack/usage.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi/linux/magic.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/user32.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/asm-generic/compat.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/syscall_wrapper.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/ia32.h \
    $(wildcard include/config/ia32/support.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/suspend.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/suspend_64.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/desc.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi/asm/ldt.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/cpu_entry_area.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/intel_ds.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/tlbflush.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/invpcid.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/asm/pti.h \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c \
    $(wildcard include/config/kvm/guest.h) \

arch/x86/kernel/asm-offsets.s: $(deps_arch/x86/kernel/asm-offsets.s)

$(deps_arch/x86/kernel/asm-offsets.s):
