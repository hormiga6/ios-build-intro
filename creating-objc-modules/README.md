# Creating Objc Modules

This is my note for below articles
- http://drekka.ghost.io/creating-objective-c-modules/
- https://clang.llvm.org/docs/Modules.html

###  Compile this project

```
xcrun clang -fmodules helloworld.m Foo.m Hoge.m -Wl,`xcrun --show-sdk-path`/System/Library/Frameworks/Foundation.framework/Foundation
```
