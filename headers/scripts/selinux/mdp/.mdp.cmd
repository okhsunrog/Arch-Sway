cmd_scripts/selinux/mdp/mdp := gcc -Wp,-MMD,scripts/selinux/mdp/.mdp.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89     -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include/uapi -I/home/danila/Downloads/pf-kernel-v5.9-pf6/include -I/home/danila/Downloads/pf-kernel-v5.9-pf6/security/selinux/include -I./include  -I ./scripts/selinux/mdp   -o scripts/selinux/mdp/mdp /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/selinux/mdp/mdp.c   

source_scripts/selinux/mdp/mdp := /home/danila/Downloads/pf-kernel-v5.9-pf6/scripts/selinux/mdp/mdp.c

deps_scripts/selinux/mdp/mdp := \
    $(wildcard include/config/ext2/fs/security.h) \
    $(wildcard include/config/ext4/fs/security.h) \
    $(wildcard include/config/ext4/use/for/ext2.h) \
    $(wildcard include/config/jfs/security.h) \
    $(wildcard include/config/reiserfs/fs/security.h) \
    $(wildcard include/config/jffs2/fs/security.h) \
    $(wildcard include/config/xfs/fs.h) \
    $(wildcard include/config/gfs2/fs.h) \
    $(wildcard include/config/btrfs/fs.h) \
    $(wildcard include/config/f2fs/fs/security.h) \
    $(wildcard include/config/ocfs2/fs.h) \
    $(wildcard include/config/overlay/fs.h) \
    $(wildcard include/config/squashfs/xattr.h) \
    $(wildcard include/config/unix98/ptys.h) \
    $(wildcard include/config/hugetlbfs.h) \
    $(wildcard include/config/tmpfs.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/security/selinux.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/debug/fs.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/pstore.h) \
  /home/danila/Downloads/pf-kernel-v5.9-pf6/include/linux/kconfig.h \
    $(wildcard include/config/cc/version/text.h) \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
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

scripts/selinux/mdp/mdp: $(deps_scripts/selinux/mdp/mdp)

$(deps_scripts/selinux/mdp/mdp):
