LOCAL_PATH := .

# Sideband for Remote Control
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/etc/ir_remote.ini:recovery/root/vendor/etc/ir_remote.ini

# Support for Dynamic Partitions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/first_stage_ramdisk/fstab.m7332:recovery/root/first_stage_ramdisk/fstab.m7332
