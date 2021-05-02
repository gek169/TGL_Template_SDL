
LIB = lib/libTinyGL.a

all: $(LIB) CODE
	@echo Done!

$(LIB):
	cd src && $(MAKE) && cd ..
	cp src/*.a ./lib/


CODE: $(LIB)
	cd code && $(MAKE) && cd ..
clean:
	cd src && $(MAKE) clean && cd ..
	cd code && $(MAKE) clean && cd ..
	cd lib && rm -f *.a && cd ..
update_tinygl: clean
	rm -rf src
	mkdir temp
	cd temp && git clone https://github.com/gek169/tinyglplusplus.git && cd ..
	cp -r temp/tinyglplusplus/src ./
	cp -r temp/tinyglplusplus/include-demo/* ./include/
	cp -r temp/tinyglplusplus/include/* ./include/
	rm -rf temp
