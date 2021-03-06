PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _4718_archive_1.so
_4718_archive_1.so : archive.0/_4718_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -o .//../simv.daidir//_4718_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_4718_archive_1.so $@






%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<
CU_UDP_OBJS = \
objs/udps/F8h38.o objs/udps/Y9h1d.o objs/udps/ajvLe.o objs/udps/uQ6gx.o objs/udps/qTbGp.o  \
objs/udps/qUKec.o objs/udps/aBrjq.o objs/udps/WJG2Y.o objs/udps/eZijI.o objs/udps/hFH2J.o  \
objs/udps/TUgSV.o objs/udps/t6H9V.o objs/udps/GuLzc.o objs/udps/v17TT.o objs/udps/JIUcK.o  \
objs/udps/y4a7N.o objs/udps/PhkAb.o objs/udps/qIhZj.o objs/udps/hg6Rm.o objs/udps/kBv7Y.o  \
objs/udps/W7e2i.o objs/udps/eAW1F.o objs/udps/Gjg4Z.o objs/udps/Z0GwU.o objs/udps/pNeY8.o  \
objs/udps/JgPNT.o 

CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
amcQwB.o objs/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

