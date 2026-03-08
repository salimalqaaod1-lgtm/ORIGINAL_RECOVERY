LOCAL_PATH := $(call my-dir)

# وظيفة لتسجيل المكتبات الجاهزة تلقائياً
define add-prebuilt-lib
    include $(CLEAR_VARS)
    LOCAL_MODULE := $(1)
    LOCAL_MODULE_CLASS := SHARED_LIBRARIES
    LOCAL_MODULE_SUFFIX := .so
    LOCAL_SRC_FILES := recovery/root/system/lib/$(1).so
    LOCAL_MODULE_TAGS := optional
    include $(PREBUILT_SHARED_LIBRARY)
endef
# تعريف ملفات الـ HW الجاهزة
include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.health@2.0-impl-default
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_SUFFIX := .so
# تأكد من هذا المسار بدقة من صورك
LOCAL_SRC_FILES := recovery/root/system/lib/hw/android.hardware.health@2.0-impl-default.so
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

# تسجيل المكتبات التي ظهرت في صورك ويحتاجها الريكفري بشدة
$(eval $(call add-prebuilt-lib,android.hardware.boot@1.0))
$(eval $(call add-prebuilt-lib,android.hardware.boot@1.1))
$(eval $(call add-prebuilt-lib,libc))
$(eval $(call add-prebuilt-lib,libbase))
$(eval $(call add-prebuilt-lib,libcutils))
$(eval $(call add-prebuilt-lib,liblog))
