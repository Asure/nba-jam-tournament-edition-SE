# NBA Jam SE — PLS Editor
# Requires SDL2. Install on Debian/Ubuntu: sudo apt install libsdl2-dev

CC      = gcc
CFLAGS  = -O2 -Wall -Wextra $(shell sdl2-config --cflags)
LDFLAGS = $(shell sdl2-config --libs) -lm

# Windows cross-compile (MinGW):
#   make CC=x86_64-w64-mingw32-gcc \
#        CFLAGS="-O2 -I/path/to/SDL2/include" \
#        LDFLAGS="-L/path/to/SDL2/lib -lSDL2 -lSDL2main -mwindows -lm"

TARGET  = plsedit
SRC     = plsedit.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(TARGET) $(TARGET).exe

.PHONY: all clean
