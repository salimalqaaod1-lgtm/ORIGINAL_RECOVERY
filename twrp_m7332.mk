# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom vendor setup
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m7332 device config
$(call inherit-product, device/MT9632/m7332/device.mk)

PRODUCT_DEVICE := m7332
PRODUCT_NAME := twrp_m7332
PRODUCT_BRAND := MTK
PRODUCT_MODEL := Smart TV MT9632
PRODUCT_MANUFACTURER := mstar

# Force Dynamic Partitions Support (For GSI Flashing)
PRODUCT_USE_DYNAMIC_PARTITIONS := true
