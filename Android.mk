LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.boot@1.0
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
# تأكد من المسار بناءً على صورك
LOCAL_SRC_FILES := recovery/root/system/lib/android.hardware.boot@1.0.so
LOCAL_CHECK_ELF_FILES := false
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.boot@1.1
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := recovery/root/system/lib/android.hardware.boot@1.1.so
LOCAL_CHECK_ELF_FILES := false
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)
