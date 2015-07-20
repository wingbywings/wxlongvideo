ARCHS = armv7 arm64 armv7s
TARGET = iphone:clang:8.1:5.0

include theos/makefiles/common.mk

TWEAK_NAME = wxlongvideo
wxlongvideo_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
