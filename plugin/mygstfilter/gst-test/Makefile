LIBS=-L/home/czl/Workspace/gst/outdir/lib -pthread -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0 
INCL=-I/home/czl/Workspace/gst/outdir/include/gstreamer-1.0 \
     -I/home/czl/Workspace/gst/outdir/include/glib-2.0 \
     -I/home/czl/Workspace/gst/outdir/lib/glib-2.0/include
all:
	gcc basic-tutorial-1.c -O0 -g -o basic-tutorial-1 ${INCL} ${LIBS}
	gcc basic-tutorial-2.c -O0 -g -o basic-tutorial-2 ${INCL} ${LIBS}
clean:
	-rm -fr basic-tutorial-1 basic-tutorial-2
