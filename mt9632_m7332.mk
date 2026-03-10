$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product,device/mediatek/m7332/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_DEVICE := m7332
PRODUCT_NAME := mt9632_m7332 
PRODUCT_BRAND := MTK
PRODUCT_MODEL := Smart tv 
PRODUCT_MANUFACTURER := mstar
PLATFORM_VERSION= 9
PRODUCT_USE_DYNAMIC_PARTITIONS := true
TARGET_ARCH := arm
PRODUCT_CHARACTERISTICS := tv
PRODUCT_IS_ATV := true
