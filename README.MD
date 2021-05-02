# Template for projects wishing to use TinyGL

Optimized for development on Linux and Unix-like systems, but should work on Windows with some makefile changes

use `make` to make your code.

use `make update_tinygl` to update tinygl from my repository `https://github.com/gek169/tinyglplusplus.git`

use `make clean` to clean up all extraneous files.


# Recommended project structure

```
/
build/
	<All files you will ship with your program>
src/
	<All source files in your executable>
include/
	<All headers>
src_tgl/
	<TinyGL Source Code>
README.MD: your project's readme (this file!)
Makefile: your project's makefile. By default, this makefile's "make" just builds all C files in src into "main" or
"main.exe" on windows, and copies it to "build"
config.mk: Settings for your project, such as what compiler to use, and what compiler flags to use.
```
