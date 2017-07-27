# Static and Dynamic Libraries
memo for [Static and Dynamic Libraries](https://pewpewthespells.com/blog/static_and_dynamic_libraries.html)

## Dynamic Linking

### Libraries
Dynamic libraries are loaded into memory at runtime prior to having symbols getting resolved. 

### Framework
Dynamic frameworks are dynamically likable libraries which are embeded in a bundle.

## Static Linking
Unlike dynamic, linking static libraries includes the object file code from the library into the target's binary. This results in a larger size on disk and slower launch times.

### Library
A static library is a container for a set of object files. Static libraries use the file extension ".a", which comes from the (ar)chive file3 type.

### Framework
A static framework is a bundle containing a static library file. These frameworks are just a convenient way to publish a static library that uses external assets.


