CC = gcc
CFLAGS = $(shell pkg-config --cflags dbus-1)
LDFLAGS = $(shell pkg-config --libs dbus-1)
TARGET = lf-file-handler
SRC = main.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC) $(LDFLAGS)

clean:
	rm -f $(TARGET)
