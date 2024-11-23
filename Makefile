# makefile

OBJ_FILE=Flappy\ Bird
SDL_PATH=D:/Azfar\ DOX/Desktop/C\ language\ Libraries
SDL2_PATH=$(SDL_PATH)/SDL2-2.28.5/x86_64-w64-mingw32
SDL2_TTF_PATH=$(SDL_PATH)/SDL2_ttf-2.20.2/x86_64-w64-mingw32
SDL2_IMAGE_PATH=$(SDL_PATH)/SDL2_image-2.6.3/x86_64-w64-mingw32

INCLUDE_PATHS=-I$(SDL2_PATH)/include -I$(SDL2_TTF_PATH)/include -I$(SDL2_IMAGE_PATH)/include
LIBRARY_PATHS=-L$(SDL2_PATH)/lib -L$(SDL2_TTF_PATH)/lib -L$(SDL2_IMAGE_PATH)/lib
COMPILER_FLAGS=-Wall -g
LINKER_FLAGS=-lSDL2 -lSDL2_ttf -lSDL2_image

all:
	gcc $(COMPILER_FLAGS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) -o $(OBJ_FILE) src/main.c $(LINKER_FLAGS)

exec:
	./$(OBJ_FILE)

clean:
	del /F /Q $(OBJ_FILE).exe
	del /F /Q *.o
	del /F /Q Icon

setup:
	make clean
	make