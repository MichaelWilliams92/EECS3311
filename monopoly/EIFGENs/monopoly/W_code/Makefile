INCLUDE_PATH = 
SHELL = /bin/sh
CC = gcc
CPP = g++
CFLAGS = -O0 -pipe -fPIC -D_GNU_SOURCE -m64  -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"/cs/local/packages/Eiffel15.12/studio/spec/linux-x86-64/include" -I. $(INCLUDE_PATH)
CPPFLAGS = -O0 -pipe -fPIC -D_GNU_SOURCE -m64  -DWORKBENCH -I"/cs/local/packages/Eiffel15.12/studio/spec/linux-x86-64/include" -I. $(INCLUDE_PATH)
LDFLAGS = -m elf_x86_64
CCLDFLAGS = -m64  
LDSHAREDFLAGS =  -m elf_x86_64 -shared -o
EIFLIB = "/cs/local/packages/Eiffel15.12/studio/spec/linux-x86-64/lib/libwkbench.a"
EIFTEMPLATES = /cs/local/packages/Eiffel15.12/studio/config/linux-x86-64/templates
LIBS = -lm
MAKE = make
AR = ar
LD = ld
MKDEP = \$(EIFFEL_SRC)/C/mkdep $(DPFLAGS) --
MV = /bin/mv
CP = /bin/cp
RANLIB = :
RM = /bin/rm -f
FILE_EXIST = 
RMDIR = 
X2C = "/cs/local/packages/Eiffel15.12/studio/spec/linux-x86-64/bin/x2c"
SHAREDLINK = ld
SHAREDLIBS = -lm
SHARED_SUFFIX = .so
COMMAND_MAKEFILE = 
START_TEST = if [ ! -f finished ] ; then 
END_TEST = ; fi 
CREATE_TEST = touch finished 
SYSTEM_IN_DYNAMIC_LIB = monopoly.so 

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

SUBDIRS = C1 C2 E1

EXTERNALS = 

all: monopoly

C1/Cobj1.o: Makefile E1/estructure.h
	cd C1 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

C2/Cobj2.o: Makefile E1/estructure.h
	cd C2 ; $(START_TEST) $(SHELL) Makefile.SH ; $(MAKE) $(END_TEST)

E1/Makefile: E1/Makefile.SH
	cd E1 ; $(SHELL) Makefile.SH

E1/emain.o: Makefile E1/Makefile
	$(CP) "$(EIFTEMPLATES)/emain.template" "E1/emain.c"
	cd E1 ; $(MAKE) emain.o

E1/eoption.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) eoption.o

E1/epattern.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) epattern.o

E1/efrozen.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) efrozen.o

E1/ecall.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) ecall.o

E1/eplug.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) eplug.o

E1/eskelet.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) eskelet.o

E1/enames.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) enames.o

E1/evisib.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) evisib.o

E1/ececil.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) ececil.o

E1/einit.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) einit.o

E1/eparents.o: Makefile E1/Makefile E1/estructure.h
	cd E1 ; $(MAKE) eparents.o

OBJECTS= C2/Cobj2.o C1/Cobj1.o  E1/eoption.o E1/epattern.o E1/efrozen.o E1/ecall.o E1/eplug.o E1/eskelet.o E1/enames.o E1/evisib.o E1/ececil.o E1/einit.o E1/eparents.o

PRECOMP_OBJECTS= "/cs/local/packages/Eiffel15.12/precomp/spec/linux-x86-64/EIFGENs/base-safe/W_code/preobj.o"


monopoly: $(OBJECTS)  E1/emain.o Makefile
	$(RM) monopoly
	$(CC) -o monopoly $(CFLAGS) $(CCLDFLAGS)  $(OBJECTS) E1/emain.o \
		$(PRECOMP_OBJECTS) $(EXTERNALS) $(EIFLIB) $(LIBS)

RCECIL = wmalloc.o wgarcol.o wlocal.o wexcept.o wstore.o wretrieve.o whash.o \
	wtraverse.o whashin.o wtools.o winternal.o wplug.o wcopy.o wequal.o \
	wlmalloc.o wout.o wtimer.o wurgent.o wsig.o whector.o wcecil.o \
	wfile.o wdir.o wmisc.o werror.o wumain.o wmemory.o wargv.o wboolstr.o \
	wsearch.o wmain.o debug.o interp.o woption.o update.o wbench.o \
	wrun_idr.o wcompress.o wconsole.o wpath_name.o wobject_id.o \
	weif_threads.o wgen_conf.o weif_type_id.o wrout_obj.o weif_project.o \
	idrs.o wposix_threads.o network.o ipc.o wmemory_analyzer.o woffset.o 

STATIC_CECIL = libmonopoly.a
cecil: $(STATIC_CECIL)
$(STATIC_CECIL):  $(OBJECTS) 
	$(AR) x $(EIFLIB)
	$(AR) cr $(STATIC_CECIL) $(OBJECTS) $(PRECOMP_OBJECTS) $(RCECIL)
	$(RANLIB) $(STATIC_CECIL)
	$(RM) $(RCECIL) 

SHARED_CECIL = libmonopoly$(SHARED_SUFFIX)
dynamic_cecil: $(SHARED_CECIL) 
SHARED_CECIL_OBJECT = $(OBJECTS) \
		E1/emain.o
SHAREDFLAGS = $(LDSHAREDFLAGS) $(SHARED_CECIL) 
$(SHARED_CECIL): $(SHARED_CECIL_OBJECT) 
	$(RM) $(SHARED_CECIL) 
	$(SHAREDLINK) $(SHAREDFLAGS) $(SHARED_CECIL_OBJECT) $(PRECOMP_OBJECTS) $(EXTERNALS) $(EIFLIB) $(SHAREDLIBS) 



dynlib: $(SYSTEM_IN_DYNAMIC_LIB) 
E1/egc_dynlib.o: Makefile E1/Makefile
	$(CP) "$(EIFTEMPLATES)/egc_dynlib.template" E1/egc_dynlib.c
	cd E1 ; $(MAKE) egc_dynlib.o ; cd ..
E1/edynlib.o: Makefile E1/Makefile E1/edynlib.c 
	cd E1 ; $(MAKE) edynlib.o ; cd ..

SYSTEM_IN_DYNAMIC_LIB_OBJ = $(OBJECTS) \
		E1/edynlib.o E1/egc_dynlib.o 
DYNLIBSHAREDFLAGS = $(LDSHAREDFLAGS) $(SYSTEM_IN_DYNAMIC_LIB) 
$(SYSTEM_IN_DYNAMIC_LIB): $(SYSTEM_IN_DYNAMIC_LIB_OBJ) 
	$(RM) $(SYSTEM_IN_DYNAMIC_LIB) 
	$(SHAREDLINK) $(DYNLIBSHAREDFLAGS) $(SYSTEM_IN_DYNAMIC_LIB_OBJ) $(PRECOMP_OBJECTS) $(EXTERNALS) $(EIFLIB) $(SHAREDLIBS) 


clean: sub_clean local_clean
clobber: sub_clobber local_clobber

local_clean::
	$(RM) core finished *.o *.so *.a

local_clobber:: local_clean
	$(RM) Makefile config.sh finish_freezing

sub_clean::
	for i in $(SUBDIRS); \
	do \
		if [ -r $$i/Makefile ]; then \
			(cd $$i ; $(MAKE) clean); \
		fi; \
	done

sub_clobber::
	for i in $(SUBDIRS); \
	do \
		if [ -r $$i/Makefile ]; then \
			(cd $$i ; $(MAKE) clobber); \
		fi; \
	done

