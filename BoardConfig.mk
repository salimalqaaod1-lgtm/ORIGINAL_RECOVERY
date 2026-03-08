DEVICE_PATH := device/mediatek/m7332

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_USES_64_BIT_BINDER := false 

# Assert
TARGET_OTA_ASSERT_DEVICE := m7332,MT9632

# Kernel Data from Unpack
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_TAGS_OFFSET := 0x01000000
# إخبار نظام البناء باستخدام الكيرنل المرفق
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# منع النظام من محاولة بناء الكيرنل من السورس
BOARD_KERNEL_BINARIES := kernel

# Kernel Command Line
BOARD_KERNEL_CMDLINE := androidboot.boot_devices=mstar_mci.0 buildvariant=userdebug

# Platform
TARGET_BOARD_PLATFORM := mt9632
TARGET_BOARD_PLATFORM_GPU := mali-g52

# Partitions (إعدادات مطابقة تماماً لما ظهر في صور الـ ADB Shell الخاصة بك)
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPER_PARTITION_GROUPS := mstar_dynamic_partitions
# القيمة التالية تم حسابها من mmcblk0p26 (super)
BOARD_MSTAR_DYNAMIC_PARTITIONS_SIZE := 2225078272 
BOARD_MSTAR_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm

# تحديد حجم قسم الريكفري لضمان عدم تجاوز المساحة المتاحة (40 ميجابايت)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040

# TWRP Specific Configs
TW_THEME := landscape_hdpi
DEVICE_SCREEN_WIDTH := 1280
DEVICE_SCREEN_HEIGHT := 720
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SUPPORT_USB_OTG := true

TW_NO_SCREEN_TIMEOUT := true
TW_NO_BATT_PERCENT := true
TW_EXCLUDE_ENVELOPES := true


# DTB Configuration
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/dtb.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --header_version $(BOARD_BOOTIMG_HEADER_VERSION) --board $(TARGET_BOARD_PLATFORM) --dtb $(TARGET_PREBUILT_DTB)
# تخطي التحقق من الـ Dependencies المفقودة في أندرويد 11
BUILD_BROKEN_VNDK_VERSION := true
BUILD_BROKEN_DUP_RULES := true
# تعطيل فحص ملفات ELF الجاهزة تماماً
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
# إخبار النظام أن المجلدات مستخرجة وجاهزة
BOARD_ROOT_EXTRA_FOLDERS := bin etc lib
