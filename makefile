CC = gcc
CFLAGS = -Wall
OBJS = conio.o minesweeper.o 
HEADERS = conio.h
TARGET = main

$(TARGET): $(OBJS)
	$(CC) -o $@ $^  
%.o: %.c
	$(CC) -o $@ $(CFLAGS) -g -c $< 

$(OBJS): $(HEADERS)

clean:
	$(RM) $(OBJS) $(TARGET)

dist:
	tar -czvf src.gz makefile rectangle.c main.c circle.c $(HEADERS)

cleandist:
	$(RM) src.gz

realclean: 
	$(RM) $(OBJS) $(TARGET)
	$(RM) src.gz
all: $(TARGET) dist



