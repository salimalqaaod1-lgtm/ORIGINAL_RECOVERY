LOCAL_PATH := device/mediatek/m7332

# Sideband for Remote Control
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ir_remote.ini:recovery/root/vendor/etc/ir_remote.ini

# Support for Dynamic Partitions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/first_stage_ramdisk/fstab.m7332

# Boot Script (تفعيل ملف التشغيل الذي يحتوي على أوامر الـ IR والـ USB)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.m7332.rc:recovery/root/init.recovery.m7332.rc
