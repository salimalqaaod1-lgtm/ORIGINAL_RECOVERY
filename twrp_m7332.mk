# Inherit from generic Android products.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from our custom vendor setup (TWRP)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m7332 device config
# بما أن ملفاتك في المجلد الرئيسي، نستخدم المسار المباشر
$(call inherit-product,device/mediatek/m7332/device.mk)

PRODUCT_DEVICE := m7332
PRODUCT_NAME := twrp_m7332
PRODUCT_BRAND := MTK
PRODUCT_MODEL := Smart tv 
PRODUCT_MANUFACTURER := mstar

# Force Dynamic Partitions Support (For GSI Flashing)
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Specify Architecture for ARM32
TARGET_ARCH := arm
