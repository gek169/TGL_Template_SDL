include ../config.mk
#CC= gcc
#CFLAGS = -g -Wall -O3 -w
GL_LIBS= -L../ 
GL_INCLUDES= -I../include/
ALL_T= main
LIB= ../lib/libTinyGL.a

#For GCC on good OSes:
SDL_LIBS= -lSDL 
#for MinGW users:
#SDL_LIBS= -lmingw32 -lSDLmain -lSDL 


SDL_MIXERLIBS= -lSDL_mixer -lmad -logg -lmikmod -logg
#SDL_MIXERLIBS= 
all: $(ALL_T)
clean:
	rm -f $(ALL_T) *.exe
main:
	$(CC) *.c $(LIB) -o main $(GL_INCLUDES) $(SDL_LIBS) $(SDL_MIXERLIBS) $(GL_LIBS) $(CFLAGS) -lm
