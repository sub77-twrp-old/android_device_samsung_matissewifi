$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/samsung/matissewifi/matissewifi-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/matissewifi/overlay

BOARD_CUSTOM_BOOTIMG_MK := device/samsung/matissewifi/bliss_mkbootimg.mk

LOCAL_PATH := device/samsung/matissewifi
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/file_contexts:recovery/root/prebuilt_file_contexts

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := bliss_matissewifi
PRODUCT_DEVICE := matissewifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := matissewifi

# TWRP
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# BlissPop Configs
BLISSIFY := true
BLISS_O3 := true
BLISS_GRAPHITE := true
BLISS_STRICT := true
BLISS_KRAIT := true
BLISS_PIPE := true
TARGET_TC_ROM := 4.9-sm
TARGET_TC_KERNEL := 4.9-sm
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
