LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.boot@1.0
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SRC_FILES := recovery/root/lib/android.hardware.boot@1.0.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
include $(PREBUILT_SHARED_LIBRARY)
