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
	exec ./$(TARGET) | awk -f test.awk -v arg1=1
	exec ./$(TARGET) 4| awk -f test.awk -v arg1=4
	exec ./$(TARGET) 10| awk -f test.awk -v arg1=10

clean:
	-rm -f *.o
	-rm -f $(TARGET)
