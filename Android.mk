LOCAL_PATH := $(call my-dir)

define add-prebuilt-lib
    include $(CLEAR_VARS)
    LOCAL_MODULE := $(1)
    LOCAL_MODULE_CLASS := SHARED_LIBRARIES
    LOCAL_MODULE_SUFFIX := .so
    LOCAL_SRC_FILES := recovery/root/system/lib/$(1).so
    
    LOCAL_MODULE_TAGS := optional
    include $(PREBUILT_SHARED_LIBRARY)
endef

# مكتبات النظام الأساسية التي تظهر في صورك
$(eval $(call add-prebuilt-lib,android.hardware.boot@1.0))
$(eval $(call add-prebuilt-lib,android.hardware.boot@1.1))
$(eval $(call add-prebuilt-lib,android.hardware.health@2.0-impl-default))
$(eval $(call add-prebuilt-lib,libc))
$(eval $(call add-prebuilt-lib,libbase))
$(eval $(call add-prebuilt-lib,libcutils))
$(eval $(call add-prebuilt-lib,liblog))
$(eval $(call add-prebuilt-lib,libhidlbase))
$(eval $(call add-prebuilt-lib,libutils))
$(eval $(call add-prebuilt-lib,libcrypto))
$(eval $(call add-prebuilt-lib,libm))
$(eval $(call add-prebuilt-lib,libz))
LOCAL_CHECK_ELF_FILES := false
