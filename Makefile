CC=g++
CFLAGS=-Wall
INCLUDES=-Isrc/libs/
LIBS=-Llib -lglfw3 -lSOIL -lassimp -lz -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo
COMMON=src/examples/common/util.cpp src/examples/common/shader.cpp src/examples/common/camera.cpp

all: hello_triangle hello_sprite hello_cube hello_heightmap hello_mesh render_to_texture cubemaps

hello_triangle:
	$(CC) $(INCLUDES) $(CFLAGS) src/examples/01-hello_triangle/main.cpp $(COMMON) -o bin/01-hello_triangle.out $(LIBS)

hello_sprite:
	$(CC) $(INCLUDES) $(CFLAGS) src/examples/02-hello_sprite/main.cpp $(COMMON) -o bin/02-hello_sprite.out $(LIBS)
	cp src/examples/02-hello_sprite/image.png bin/image.png

hello_cube:
	$(CC) $(INCLUDES) $(CFLAGS) src/examples/03-hello_cube/main.cpp $(COMMON) -o bin/03-hello_cube.out $(LIBS)
	cp src/examples/03-hello_cube/image.png bin/image.png

hello_heightmap:
	$(CC) $(INCLUDES) $(CFLAGS) src/examples/04-hello_heightmap/main.cpp src/examples/04-hello_heightmap/heightmap.cpp $(COMMON) -o bin/04-hello_heightmap.out $(LIBS)
	cp src/examples/04-hello_heightmap/heightmap.bmp bin/heightmap.bmp

hello_mesh:
	$(CC) $(INCLUDES) $(CFLAGS) src/examples/05-hello_mesh/main.cpp src/examples/05-hello_mesh/mesh.cpp src/examples/05-hello_mesh/material.cpp $(COMMON) -o bin/05-hello_mesh.out $(LIBS)
	cp src/examples/05-hello_mesh/image.png bin/image.png
	cp src/examples/05-hello_mesh/test_mesh.obj bin/test_mesh.obj

render_to_texture:
	$(CC) $(INCLUDES) $(CFLAGS) src/examples/06-render_to_texture/main.cpp src/examples/06-render_to_texture/mesh.cpp src/examples/06-render_to_texture/material.cpp $(COMMON) -o bin/06-render_to_texture.out $(LIBS)
	cp src/examples/06-render_to_texture/image.png bin/image.png
	cp src/examples/06-render_to_texture/test_mesh.obj bin/test_mesh.obj

cubemaps:
	$(CC) $(INCLUDES) $(CFLAGS) src/examples/07-cubemaps/main.cpp src/examples/07-cubemaps/skybox.cpp $(COMMON) -o bin/07-cubemaps.out $(LIBS)
	cp src/examples/07-cubemaps/*.png bin/

clean:
	rm bin/*
