CFLAGS=`pkg-config --cflags gtk+-2.0 gstreamer-1.0`
LIBS=`pkg-config --libs gtk+-2.0 gstreamer-1.0`
#gstreamer-1.0 gstreamer-app-1.0 
all: player  
  
player:   
	gcc -O0 -g  -o MediaPlayer main.c main.h $(LIBS) $(CFLAGS)
clean:  
	-rm -fr *.o MediaPlayer  
