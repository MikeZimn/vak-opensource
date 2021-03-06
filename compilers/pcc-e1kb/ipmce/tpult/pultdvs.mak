PROJ = PULTDVS
PROJFILE = PULTDVS.MAK
DEBUG = 0

PWBRMAKE  = pwbrmake
NMAKEBSC1  = set
NMAKEBSC2  = nmake
BRFLAGS  =  /o $(PROJ).bsc /Es
BROWSE	= 1
CFLAGS_G  =  /BATCH /FR$*.sbr /nologo
CC  = cl
CFLAGS_D  = /Ot /Ol /Og /Oe /Oi /Zi /Gs
CFLAGS_R  = /Ot /Ol /Og /Oe /Oi /Zi /Gs
ASM  = masm
AFLAGS_G  = /Mx /T
AFLAGS_D  = /Zi
LINKER	= link
ILINK  = ilink
LRF  = echo > NUL
BIND  = bind
RC  = rc
IMPLIB	= implib
LFLAGS_G  =  /NOI /NOE	/BATCH /nologo
LFLAGS_D  =  /CO /INC /F /PACKC
LFLAGS_R  =  /E /F /PACKC
MAPFILE_D  = NUL
MAPFILE_R  = NUL
CVFLAGS  =  /25 /F
NMFLAGS  = /nologo
RUNFLAGS  = disk/r

OBJS_EXT  = ..\..\..\C600\LIB\BINMODE.OBJ
OBJS  = $(OBJS_EXT) PULTDVS.obj MH.obj MENU.obj KEY.obj INTR.obj CHOICE.obj\
	CAP.obj BATCH.obj TTY.obj STATE_B.obj SCR.obj RSAS.obj WKB.obj\
	UTILS.obj UT.obj DEBUG.obj
SBRS  = PULTDVS.sbr MH.sbr MENU.sbr KEY.sbr INTR.sbr CHOICE.sbr CAP.sbr\
	BATCH.sbr TTY.sbr STATE_B.sbr SCR.sbr RSAS.sbr WKB.sbr UTILS.sbr\
	UT.sbr DEBUG.sbr

all: $(PROJ).exe

.SUFFIXES: .c .sbr .obj

PULTDVS.obj : PULTDVS.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\stdlib.h\
	E:\C600\INCLUDE\signal.h E:\C600\INCLUDE\ctype.h\
	E:\C600\INCLUDE\string.h cap.h key.h scr.h menu.h choice.h ut.h

PULTDVS.sbr : PULTDVS.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\stdlib.h\
	E:\C600\INCLUDE\signal.h E:\C600\INCLUDE\ctype.h\
	E:\C600\INCLUDE\string.h cap.h key.h scr.h menu.h choice.h ut.h

MH.obj : MH.C E:\C600\INCLUDE\stdlib.h scr.h menu.h

MH.sbr : MH.C E:\C600\INCLUDE\stdlib.h scr.h menu.h

MENU.obj : MENU.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\stdlib.h E:\C600\INCLUDE\sys\types.h key.h scr.h\
	menu.h choice.h ut.h

MENU.sbr : MENU.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\stdlib.h E:\C600\INCLUDE\sys\types.h key.h scr.h\
	menu.h choice.h ut.h

KEY.obj : KEY.C key.h cap.h E:\C600\INCLUDE\dos.h intr.h scr.h ut.h\
	E:\C600\INCLUDE\setjmp.h E:\C600\INCLUDE\signal.h

KEY.sbr : KEY.C key.h cap.h E:\C600\INCLUDE\dos.h intr.h scr.h ut.h\
	E:\C600\INCLUDE\setjmp.h E:\C600\INCLUDE\signal.h

INTR.obj : INTR.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\dos.h\
	E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\memory.h\
	E:\C600\INCLUDE\string.h intr.h key.h scr.h choice.h wkb.h menu.h ut.h

INTR.sbr : INTR.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\dos.h\
	E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\memory.h\
	E:\C600\INCLUDE\string.h intr.h key.h scr.h choice.h wkb.h menu.h ut.h

CHOICE.obj : CHOICE.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\stdlib.h E:\C600\INCLUDE\sys\types.h choice.h scr.h\
	key.h ut.h

CHOICE.sbr : CHOICE.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\stdlib.h E:\C600\INCLUDE\sys\types.h choice.h scr.h\
	key.h ut.h

CAP.obj : CAP.C cap.h

CAP.sbr : CAP.C cap.h

BATCH.obj : BATCH.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\stdlib.h\
	E:\C600\INCLUDE\sys\types.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\ctype.h choice.h scr.h key.h ut.h wkb.h batch.h

BATCH.sbr : BATCH.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\stdlib.h\
	E:\C600\INCLUDE\sys\types.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\ctype.h choice.h scr.h key.h ut.h wkb.h batch.h

TTY.obj : TTY.C

TTY.sbr : TTY.C

STATE_B.obj : STATE_B.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\stdlib.h E:\C600\INCLUDE\dos.h\
	E:\C600\INCLUDE\sys\types.h E:\C600\INCLUDE\memory.h\
	E:\C600\INCLUDE\time.h wkb.h scr.h key.h intr.h menu.h ut.h

STATE_B.sbr : STATE_B.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\stdlib.h E:\C600\INCLUDE\dos.h\
	E:\C600\INCLUDE\sys\types.h E:\C600\INCLUDE\memory.h\
	E:\C600\INCLUDE\time.h wkb.h scr.h key.h intr.h menu.h ut.h

SCR.obj : SCR.C E:\C600\INCLUDE\setjmp.h E:\C600\INCLUDE\signal.h\
	E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\dos.h scr.h key.h ut.h cap.h\
	E:\C600\INCLUDE\stdio.h

SCR.sbr : SCR.C E:\C600\INCLUDE\setjmp.h E:\C600\INCLUDE\signal.h\
	E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\dos.h scr.h key.h ut.h cap.h\
	E:\C600\INCLUDE\stdio.h

RSAS.obj : RSAS.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\stdlib.h E:\C600\INCLUDE\process.h\
	E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\dos.h E:\C600\INCLUDE\errno.h\
	E:\C600\INCLUDE\memory.h intr.h scr.h wkb.h choice.h menu.h batch.h\
	ut.h

RSAS.sbr : RSAS.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h\
	E:\C600\INCLUDE\stdlib.h E:\C600\INCLUDE\process.h\
	E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\dos.h E:\C600\INCLUDE\errno.h\
	E:\C600\INCLUDE\memory.h intr.h scr.h wkb.h choice.h menu.h batch.h\
	ut.h

WKB.obj : WKB.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\stdlib.h\
	E:\C600\INCLUDE\dos.h E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\errno.h\
	E:\C600\INCLUDE\sys\types.h E:\C600\INCLUDE\sys\stat.h\
	E:\C600\INCLUDE\time.h wkb.h choice.h intr.h

WKB.sbr : WKB.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\stdlib.h\
	E:\C600\INCLUDE\dos.h E:\C600\INCLUDE\conio.h E:\C600\INCLUDE\errno.h\
	E:\C600\INCLUDE\sys\types.h E:\C600\INCLUDE\sys\stat.h\
	E:\C600\INCLUDE\time.h wkb.h choice.h intr.h

UTILS.obj : UTILS.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h wkb.h\
	choice.h ut.h intr.h

UTILS.sbr : UTILS.C E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h wkb.h\
	choice.h ut.h intr.h

UT.obj : UT.C E:\C600\INCLUDE\io.h E:\C600\INCLUDE\stdlib.h\
	E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h scr.h ut.h

UT.sbr : UT.C E:\C600\INCLUDE\io.h E:\C600\INCLUDE\stdlib.h\
	E:\C600\INCLUDE\stdio.h E:\C600\INCLUDE\string.h scr.h ut.h

DEBUG.obj : DEBUG.C choice.h wkb.h

DEBUG.sbr : DEBUG.C choice.h wkb.h


$(PROJ).bsc : $(SBRS)
	$(PWBRMAKE) @<<
$(BRFLAGS) $(SBRS)
<<

$(PROJ).exe : $(OBJS)
!IF $(DEBUG)
	$(LRF) @<<$(PROJ).lrf
$(RT_OBJS: = +^
) $(OBJS: = +^
)
$@
$(MAPFILE_D)
$(LLIBS_G: = +^
) +
$(LLIBS_D: = +^
) +
$(LIBS: = +^
)
$(DEF_FILE) $(LFLAGS_G) $(LFLAGS_D);
<<
!ELSE
	$(LRF) @<<$(PROJ).lrf
$(RT_OBJS: = +^
) $(OBJS: = +^
)
$@
$(MAPFILE_R)
$(LLIBS_G: = +^
) +
$(LLIBS_R: = +^
) +
$(LIBS: = +^
)
$(DEF_FILE) $(LFLAGS_G) $(LFLAGS_R);
<<
!ENDIF
!IF $(DEBUG)
	$(ILINK) -a -e "$(LINKER) @$(PROJ).lrf" $@
!ELSE
	$(LINKER) @$(PROJ).lrf
!ENDIF
	$(NMAKEBSC1) MAKEFLAGS=
	$(NMAKEBSC2) $(NMFLAGS) -f $(PROJFILE) $(PROJ).bsc


.c.sbr :
!IF $(DEBUG)
	$(CC) /Zs $(CFLAGS_G) $(CFLAGS_D) /FR$@ $<
!ELSE
	$(CC) /Zs $(CFLAGS_G) $(CFLAGS_R) /FR$@ $<
!ENDIF

.c.obj :
!IF $(DEBUG)
	$(CC) /c $(CFLAGS_G) $(CFLAGS_D) /Fo$@ $<
!ELSE
	$(CC) /c $(CFLAGS_G) $(CFLAGS_R) /Fo$@ $<
!ENDIF


run: $(PROJ).exe
	$(PROJ).exe $(RUNFLAGS)

debug: $(PROJ).exe
	CV $(CVFLAGS) $(PROJ).exe $(RUNFLAGS)
