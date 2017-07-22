# The Compiler

This is my note for objc.io's [The Compiler](https://www.objc.io/issues/6-build-tools/compiler/)

###  Show phases compiler proceeds through

```
$ clang -ccc-print-phases helloworld.m
```

You can see the line `#import <Foundation/Foundation.h>` is expanged about 90,000 lines in executing below commands.

```
clang -E hello.c | wc -l
```
