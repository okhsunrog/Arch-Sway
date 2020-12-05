	.file	"asm-offsets.c"
# GNU C89 (GCC) version 10.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 10.2.0, GMP version 6.2.0, MPFR version 4.1.0, MPC version 1.1.0, isl version isl-0.21-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc
# -I /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include
# -I ./arch/x86/include/generated
# -I /home/danila/Downloads/pf-kernel-v5.9-pf6/include -I ./include
# -I /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/include/uapi
# -I ./arch/x86/include/generated/uapi
# -I /home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi
# -I ./include/generated/uapi
# -I /home/danila/Downloads/pf-kernel-v5.9-pf6/. -I ./. -D __KERNEL__
# -D KBUILD_MODFILE="./asm-offsets" -D KBUILD_BASENAME="asm_offsets"
# -D KBUILD_MODNAME="asm_offsets"
# -isystem /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include
# -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kconfig.h
# -include /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/compiler_types.h
# -MMD arch/x86/kernel/.asm-offsets.s.d
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c
# -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -mno-80387
# -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup
# -mtune=generic -mno-red-zone -mcmodel=kernel
# -mindirect-branch=thunk-extern -mindirect-branch-register -march=x86-64
# -auxbase-strip arch/x86/kernel/asm-offsets.s -O2 -Wall -Wundef
# -Werror=strict-prototypes -Wno-trigraphs
# -Werror=implicit-function-declaration -Werror=implicit-int
# -Wno-format-security -Wno-sign-compare -Wno-frame-address
# -Wformat-truncation=0 -Wformat-overflow=0 -Wno-address-of-packed-member
# -Wframe-larger-than=2048 -Wno-unused-but-set-variable
# -Wimplicit-fallthrough=3 -Wunused-const-variable=0
# -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
# -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds
# -Wstringop-overflow=0 -Wno-restrict -Wno-maybe-uninitialized
# -Werror=date-time -Werror=incompatible-pointer-types
# -Werror=designated-init -Wno-packed-not-aligned -std=gnu90
# -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -falign-jumps=1
# -falign-loops=1 -fno-asynchronous-unwind-tables -fno-jump-tables
# -fno-delete-null-pointer-checks -fno-allow-store-data-races
# -fstack-protector-strong -fomit-frame-pointer -fno-strict-overflow
# -fno-merge-all-constants -fmerge-constants -fstack-check=no
# -fconserve-stack
# -fmacro-prefix-map=/home/danila/Downloads/pf-kernel-v5.9-pf6/=
# -fcf-protection=none -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -falign-functions
# -falign-jumps -falign-labels -falign-loops -fallocation-dce
# -fauto-inc-dec -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
# -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-symbols -feliminate-unused-debug-types
# -fexpensive-optimizations -fforward-propagate -ffp-int-builtin-inexact
# -ffunction-cse -fgcse -fgcse-lm -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-reference-addressable
# -fipa-sra -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
# -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
# -free -freg-struct-return -freorder-blocks -freorder-blocks-and-partition
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-protector-strong
# -fstdarg-opt -fstore-merging -fstrict-volatile-bitfields -fsync-libcalls
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
# -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vrp -funit-at-a-time -fverbose-asm -fwrapv -fwrapv-pointer
# -fzero-initialized-in-bss -m128bit-long-double -m64 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store -mfxsr
# -mglibc -mieee-fp -mindirect-branch-register -mlong-double-80
# -mno-fancy-math-387 -mno-red-zone -mno-sse4 -mpush-args -mskip-rax-setup
# -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:32: 	ENTRY(bx);
#APP
# 32 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_bx $40 offsetof(struct pt_regs, bx)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:33: 	ENTRY(cx);
# 33 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_cx $88 offsetof(struct pt_regs, cx)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:34: 	ENTRY(dx);
# 34 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_dx $96 offsetof(struct pt_regs, dx)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:35: 	ENTRY(sp);
# 35 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_sp $152 offsetof(struct pt_regs, sp)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:36: 	ENTRY(bp);
# 36 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_bp $32 offsetof(struct pt_regs, bp)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:37: 	ENTRY(si);
# 37 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_si $104 offsetof(struct pt_regs, si)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:38: 	ENTRY(di);
# 38 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_di $112 offsetof(struct pt_regs, di)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:39: 	ENTRY(r8);
# 39 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_r8 $72 offsetof(struct pt_regs, r8)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:40: 	ENTRY(r9);
# 40 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_r9 $64 offsetof(struct pt_regs, r9)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:41: 	ENTRY(r10);
# 41 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_r10 $56 offsetof(struct pt_regs, r10)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:42: 	ENTRY(r11);
# 42 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_r11 $48 offsetof(struct pt_regs, r11)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:43: 	ENTRY(r12);
# 43 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_r12 $24 offsetof(struct pt_regs, r12)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:44: 	ENTRY(r13);
# 44 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_r13 $16 offsetof(struct pt_regs, r13)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:45: 	ENTRY(r14);
# 45 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_r14 $8 offsetof(struct pt_regs, r14)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:46: 	ENTRY(r15);
# 46 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_r15 $0 offsetof(struct pt_regs, r15)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:47: 	ENTRY(flags);
# 47 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->pt_regs_flags $144 offsetof(struct pt_regs, flags)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:48: 	BLANK();
# 48 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:52: 	ENTRY(cr0);
# 52 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->saved_context_cr0 $200 offsetof(struct saved_context, cr0)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:53: 	ENTRY(cr2);
# 53 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->saved_context_cr2 $208 offsetof(struct saved_context, cr2)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:54: 	ENTRY(cr3);
# 54 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->saved_context_cr3 $216 offsetof(struct saved_context, cr3)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:55: 	ENTRY(cr4);
# 55 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->saved_context_cr4 $224 offsetof(struct saved_context, cr4)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:56: 	ENTRY(gdt_desc);
# 56 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->saved_context_gdt_desc $267 offsetof(struct saved_context, gdt_desc)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:57: 	BLANK();
# 57 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:60: 	BLANK();
# 60 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:63: 	DEFINE(stack_canary_offset, offsetof(struct fixed_percpu_data, stack_canary));
# 63 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->stack_canary_offset $40 offsetof(struct fixed_percpu_data, stack_canary)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:64: 	BLANK();
# 64 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets_64.c:67: }
#NO_APP
	xorl	%eax, %eax	#
	ret	
	.size	main, .-main
	.text
	.p2align 4
	.type	common, @function
common:
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:34: 	BLANK();
#APP
# 34 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:35: 	OFFSET(TASK_threadsp, task_struct, thread.sp);
# 35 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->TASK_threadsp $2520 offsetof(struct task_struct, thread.sp)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:37: 	OFFSET(TASK_stack_canary, task_struct, stack_canary);
# 37 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->TASK_stack_canary $1176 offsetof(struct task_struct, stack_canary)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:40: 	BLANK();
# 40 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:41: 	OFFSET(TASK_addr_limit, task_struct, thread.addr_limit);
# 41 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->TASK_addr_limit $2640 offsetof(struct task_struct, thread.addr_limit)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:43: 	BLANK();
# 43 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:44: 	OFFSET(crypto_tfm_ctx_offset, crypto_tfm, __crt_ctx);
# 44 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->crypto_tfm_ctx_offset $24 offsetof(struct crypto_tfm, __crt_ctx)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:46: 	BLANK();
# 46 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:47: 	OFFSET(pbe_address, pbe, address);
# 47 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->pbe_address $0 offsetof(struct pbe, address)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:48: 	OFFSET(pbe_orig_address, pbe, orig_address);
# 48 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->pbe_orig_address $8 offsetof(struct pbe, orig_address)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:49: 	OFFSET(pbe_next, pbe, next);
# 49 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->pbe_next $16 offsetof(struct pbe, next)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:52: 	BLANK();
# 52 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:53: 	OFFSET(IA32_SIGCONTEXT_ax, sigcontext_32, ax);
# 53 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_ax $44 offsetof(struct sigcontext_32, ax)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:54: 	OFFSET(IA32_SIGCONTEXT_bx, sigcontext_32, bx);
# 54 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_bx $32 offsetof(struct sigcontext_32, bx)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:55: 	OFFSET(IA32_SIGCONTEXT_cx, sigcontext_32, cx);
# 55 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_cx $40 offsetof(struct sigcontext_32, cx)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:56: 	OFFSET(IA32_SIGCONTEXT_dx, sigcontext_32, dx);
# 56 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_dx $36 offsetof(struct sigcontext_32, dx)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:57: 	OFFSET(IA32_SIGCONTEXT_si, sigcontext_32, si);
# 57 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_si $20 offsetof(struct sigcontext_32, si)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:58: 	OFFSET(IA32_SIGCONTEXT_di, sigcontext_32, di);
# 58 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_di $16 offsetof(struct sigcontext_32, di)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:59: 	OFFSET(IA32_SIGCONTEXT_bp, sigcontext_32, bp);
# 59 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_bp $24 offsetof(struct sigcontext_32, bp)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:60: 	OFFSET(IA32_SIGCONTEXT_sp, sigcontext_32, sp);
# 60 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_sp $28 offsetof(struct sigcontext_32, sp)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:61: 	OFFSET(IA32_SIGCONTEXT_ip, sigcontext_32, ip);
# 61 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_SIGCONTEXT_ip $56 offsetof(struct sigcontext_32, ip)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:63: 	BLANK();
# 63 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:64: 	OFFSET(IA32_RT_SIGFRAME_sigcontext, rt_sigframe_ia32, uc.uc_mcontext);
# 64 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->IA32_RT_SIGFRAME_sigcontext $164 offsetof(struct rt_sigframe_ia32, uc.uc_mcontext)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:82: 	BLANK();
# 82 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:83: 	OFFSET(BP_scratch, boot_params, scratch);
# 83 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->BP_scratch $484 offsetof(struct boot_params, scratch)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:84: 	OFFSET(BP_secure_boot, boot_params, secure_boot);
# 84 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->BP_secure_boot $492 offsetof(struct boot_params, secure_boot)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:85: 	OFFSET(BP_loadflags, boot_params, hdr.loadflags);
# 85 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->BP_loadflags $529 offsetof(struct boot_params, hdr.loadflags)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:86: 	OFFSET(BP_hardware_subarch, boot_params, hdr.hardware_subarch);
# 86 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->BP_hardware_subarch $572 offsetof(struct boot_params, hdr.hardware_subarch)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:87: 	OFFSET(BP_version, boot_params, hdr.version);
# 87 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->BP_version $518 offsetof(struct boot_params, hdr.version)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:88: 	OFFSET(BP_kernel_alignment, boot_params, hdr.kernel_alignment);
# 88 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->BP_kernel_alignment $560 offsetof(struct boot_params, hdr.kernel_alignment)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:89: 	OFFSET(BP_init_size, boot_params, hdr.init_size);
# 89 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->BP_init_size $608 offsetof(struct boot_params, hdr.init_size)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:90: 	OFFSET(BP_pref_address, boot_params, hdr.pref_address);
# 90 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->BP_pref_address $600 offsetof(struct boot_params, hdr.pref_address)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:92: 	BLANK();
# 92 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->"
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:93: 	DEFINE(PTREGS_SIZE, sizeof(struct pt_regs));
# 93 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->PTREGS_SIZE $168 sizeof(struct pt_regs)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:96: 	OFFSET(TLB_STATE_user_pcid_flush_mask, tlb_state, user_pcid_flush_mask);
# 96 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->TLB_STATE_user_pcid_flush_mask $22 offsetof(struct tlb_state, user_pcid_flush_mask)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:99: 	OFFSET(CPU_ENTRY_AREA_entry_stack, cpu_entry_area, entry_stack_page);
# 99 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->CPU_ENTRY_AREA_entry_stack $4096 offsetof(struct cpu_entry_area, entry_stack_page)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:100: 	DEFINE(SIZEOF_entry_stack, sizeof(struct entry_stack));
# 100 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->SIZEOF_entry_stack $4096 sizeof(struct entry_stack)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:101: 	DEFINE(MASK_entry_stack, (~(sizeof(struct entry_stack) - 1)));
# 101 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->MASK_entry_stack $-4096 (~(sizeof(struct entry_stack) - 1))"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:104: 	OFFSET(TSS_sp0, tss_struct, x86_tss.sp0);
# 104 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->TSS_sp0 $4 offsetof(struct tss_struct, x86_tss.sp0)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:105: 	OFFSET(TSS_sp1, tss_struct, x86_tss.sp1);
# 105 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->TSS_sp1 $12 offsetof(struct tss_struct, x86_tss.sp1)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:106: 	OFFSET(TSS_sp2, tss_struct, x86_tss.sp2);
# 106 "/home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c" 1
	
.ascii "->TSS_sp2 $20 offsetof(struct tss_struct, x86_tss.sp2)"	#
# 0 "" 2
# /home/danila/Downloads/pf-kernel-v5.9-pf6/arch/x86/kernel/asm-offsets.c:107: }
#NO_APP
	ret	
	.size	common, .-common
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
