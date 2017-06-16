# Mach-O Executables

This is my note for objc.io's [mach-o-executables article](https://www.objc.io/issues/6-build-tools/mach-o-executables/)

###  Mach-O
From [Wikipedia](https://en.wikipedia.org/wiki/Mach-O). Mach-O, short for Mach object file format, is a file format for executables, object code, shared libraries, dynamically-loaded code, and core dumps. Mach-O is used by most systems based on the Mach kernel. NeXTSTEP, macOS, and iOS are examples of systems that have used this format for native executables, libraries and object code.

### From codes to executables
Preprocessing -> Parsing and Semantic Analysis -> Code Generation and Optimization -> Assembler -> Linker

### Preprocessing

In preprocessing, `#include` and `#import` statements are replaces with contests of header files. This process is done recursively.

Execute preprocessing.

```
$ xcrun clang -E helloworld.c 
```

In Xcode, you can look preprocessor output by selecting **Product** -> **Perform Action** -> **Preprocess**

### Compilation

Output resulting assembly code

```
$ xcrun clang -S -o - helloworld.c
```

### Symbols and Linking

Dump symbols from object file

```
$ xcrun clang -c Foo.m
$ xcrun clang -c helloworld.m
$ xcrun nm -nm helloworld.o
                 (undefined) external _OBJC_CLASS_$_Foo <= external means it’s not private to this object file
                 (undefined) external _objc_autoreleasePoolPop
                 (undefined) external _objc_autoreleasePoolPush
                 (undefined) external _objc_msgSend
0000000000000000 (__TEXT,__text) external _main <= external because it needs to be visible in order to get called. It, however, is implemented in helloworld.o as well

```

Show library paths

```
$ xcrun otool -L a.out
```

Dynamically printing loaded libraries

```
$ (export DYLD_PRINT_LIBRARIES=; ./a.out )
```