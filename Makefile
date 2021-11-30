CC = gcc-iphone
TARGET = notifyutil
SRC = src/*.c
FLAGS = $(CFLAGS)
CFLAGS =
SIGN   := ldid -Sent.xml

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) -o $(TARGET) $(FLAGS) $(SRC)
	$(SIGN) $(TARGET)
