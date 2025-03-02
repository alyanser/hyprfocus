SOURCE_FILES=$(wildcard src/*.cpp)

all:
	$(CXX) -shared -fPIC --no-gnu-unique $(SOURCE_FILES) -o hyprfocus.so `pkg-config --cflags pixman-1 libdrm hyprland pangocairo libinput libudev wayland-server xkbcommon` -std=c++2b -O2

debug:
	$(CXX) -shared -fPIC --no-gnu-unique $(SOURCE_FILES) -o hyprfocus.so -g `pkg-config --cflags pixman-1 libdrm hyprland pangocairo libinput libudev wayland-server xkbcommon` -std=c++2b

clean:
	rm ./hyprfocus.so
