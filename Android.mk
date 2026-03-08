LOCAL_PATH := $(call my-dir)

# تعريف مكتبة البوت كملف جاهز
include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.boot@1.0
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
# تأكد أن المسار أدناه يطابق مكان الملف في مستودعك بالضبط
LOCAL_SRC_FILES := recovery/root/system/lib/android.hardware.boot@1.0.so
LOCAL_MODULE_SUFFIX := .so
include $(PREBUILT_SHARED_LIBRARY)

