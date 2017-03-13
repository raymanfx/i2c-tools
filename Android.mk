#
# 2017, Christopher N. Hesse <christopher.hesse@delphi.com>
#

LOCAL_PATH := $(call my-dir)


##########################################################################
# eeprog

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    eeprog/24cXX.c \
    eeprog/eeprog.c

LOCAL_MODULE := eeprog

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

include $(BUILD_STATIC_LIBRARY)

##########################################################################
# eepromer

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    eepromer/eeprom.c \
    eepromer/eepromer.c

LOCAL_MODULE := eepromer

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

include $(BUILD_STATIC_LIBRARY)

##########################################################################
# libi2c

include $(CLEAR_VARS)

LOCAL_SRC_FILES := lib/smbus.c

LOCAL_MODULE := libi2c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

include $(BUILD_SHARED_LIBRARY)

##########################################################################
# i2cdetect

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    tools/i2cdetect.c \
    tools/i2cbusses.c

LOCAL_MODULE := i2cdetect

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES += libi2c

include $(BUILD_EXECUTABLE)

##########################################################################
# i2cdump

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    tools/i2cdump.c \
    tools/i2cbusses.c \
    tools/util.c

LOCAL_MODULE := i2cdump

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES += libi2c

include $(BUILD_EXECUTABLE)

##########################################################################
# i2cset

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    tools/i2cset.c \
    tools/i2cbusses.c \
    tools/util.c

LOCAL_MODULE := i2cset

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES += libi2c

include $(BUILD_EXECUTABLE)

##########################################################################
# i2cget

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    tools/i2cget.c \
    tools/i2cbusses.c \
    tools/util.c

LOCAL_MODULE := i2cget

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES += libi2c

include $(BUILD_EXECUTABLE)
