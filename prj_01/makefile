TARGET = solution
LIBS = 
CC = gcc
CFLAGS = -g -Wall

.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

test: $(TARGET)
	exec echo 1 | ./$(TARGET) 1 2 3 4 | awk -v arg1=1 -f test.awk
	exec echo 4 | ./$(TARGET) 1 2 3 4 | awk -v arg1=1 -f test.awk
	exec echo 5 | ./$(TARGET) 1 2 3 4 | awk -v arg1=0 -f test.awk
	exec echo 12 | ./$(TARGET) 1 23 16 12 4 | awk -v arg1=1 -f test.awk
	exec echo 8 | ./$(TARGET) 1 23 16 12 4 | awk -v arg1=0 -f test.awk

clean:
	-rm -f *.o
	-rm -f $(TARGET)
