case $CONFIG in
'')
	if test ! -f ../config.sh; then
		(echo "Can't find ../config.sh."; exit 1)
	fi 2>/dev/null
	. ../config.sh
	;;
esac
case "$O" in
*/*) cd `expr X$0 : 'X\(.*\)/'` ;;
esac
echo "Compiling C code in C15"
$spitshell >Makefile <<!GROK!THIS!
INCLUDE_PATH = 
SHELL = /bin/sh
CC = $cc
CPP = $cpp
CFLAGS = $wkoptimize $ccflags $large -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"$rt_include" -I. \$(INCLUDE_PATH)
CPPFLAGS = $wkoptimize $cppflags $large -DWORKBENCH -I"$rt_include" -I. \$(INCLUDE_PATH)
LDFLAGS = $ldflags
CCLDFLAGS = $ccldflags  $console_flags
LDSHAREDFLAGS =  $ldsharedflags
EIFLIB = "$rt_lib/$prefix$wkeiflib$suffix"
EIFTEMPLATES = $rt_templates
LIBS = $libs
MAKE = $make
AR = $ar
LD = $ld
MKDEP = $mkdep \$(DPFLAGS) --
MV = $mv
CP = $cp
RANLIB = $ranlib
RM = $rm -f
FILE_EXIST = $file_exist
RMDIR = $rmdir
X2C = "$x2c"
SHAREDLINK = $sharedlink
SHAREDLIBS = $sharedlibs
SHARED_SUFFIX = $shared_suffix
COMMAND_MAKEFILE = 
START_TEST = $start_test 
END_TEST = $end_test 
CREATE_TEST = $create_test 
SYSTEM_IN_DYNAMIC_LIB = mymap$shared_suffix 
!GROK!THIS!
$spitshell >>Makefile <<'!NO!SUBS!'

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C15_c.o 

OLDOBJECTS =  sp482.o sp482d.o ar488.o ar488d.o fu474.o fu474d.o ty466.o ty466d.o \
	ty467.o ty467d.o ty470.o ty470d.o ty471.o ty471d.o ty476.o ty476d.o \
	ty477.o ty477d.o ty468.o ty468d.o ty472.o ty472d.o ty478.o ty478d.o \
	na483.o na483d.o re487.o re487d.o li490.o li490d.o to489.o to489d.o \
	it486.o it486d.o it485.o it485d.o in484.o in484d.o cu491.o cu491d.o \
	ha464.o ha464d.o ta462.o ta462d.o ac493.o ac493d.o co492.o co492d.o \
	ba494.o ba494d.o rt475.o rt475d.o rt479.o rt479d.o rt480.o rt480d.o \
	rt481.o rt481d.o rt465.o rt465d.o rt469.o rt469d.o rt473.o rt473d.o \
	ta463.o ta463d.o 

all: Cobj15.o

Cobj15.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj15.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

!NO!SUBS!
chmod 644 Makefile
$eunicefix Makefile

