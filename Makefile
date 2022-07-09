CC = cc

.PHONY: all clean

all:
	$(CC) notifyutil.c -o notifyutil
	ldid -Sent.xml notifyutil

clean:
	$(RM) notifyutil
