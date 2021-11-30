CC = gcc-iphone
TARGET = notifyutil
SRC = src/*.c
FLAGS = -std=c99 -Wall -O3 $(CFLAGS)
CFLAGS = 
SIGN   := ldid -Sent.xml

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) -o $(TARGET) $(FLAGS) $(SRC)
	$(SIGN) $(TARGET)
