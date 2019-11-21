INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = redbox

redbox_FILES = Tweak.x
redbox_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
