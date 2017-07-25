bar.o:
	clang -c bar.c -o bar.o

libfoo_dynamic.dylib: bar.o
	libtool -dynamic bar.o -o libfoo_dynamic.dylib -framework CoreFoundation -lSystem

main.o:
	clang -c main.c -o main.o

test_dynamic: libfoo_dynamic.dylib main.o
	 ld -lSystem main.o -L/System/Library/Frameworks -L. -lfoo_dynamic -o test_dynamic -dynamic -arch x86_64 -macosx_version_min 10.12.0

show_clang_ld: libfoo_dynamic.dylib main.o
	clang -v main.o  -L. -lfoo_dynamic -o test_dynamic

clean:
	rm *.o *.dylib test_dynamic
