bar.o:
	clang -c bar.c -o bar.o

libfoo_dynamic.dylib: bar.o
	libtool -dynamic bar.o -o libfoo_dynamic.dylib -framework CoreFoundation -lSystem

clean:
	rm *.o *.dylib
