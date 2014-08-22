$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/matissewifi/overlay

BOARD_CUSTOM_BOOTIMG_MK := device/samsung/matissewifi/omni_mkbootimg.mk

LOCAL_PATH := device/samsung/matissewifi
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab \
    $(LOCAL_PATH)/fstab.qcom:recovery/root/fstab.qcom

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := omni_matissewifi
PRODUCT_DEVICE := matissewifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := matissewifi

# TWRP
BOARD_SUPPRESS_EMMC_WIPE := true

# MULTIROM
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := $(LOCAL_PATH)/multirom/mr_init_devices.c
MR_DPI := mdpi
MR_DPI_MUL := 1
MR_DPI_FONT := 160
MR_FSTAB := $(LOCAL_PATH)/twrp.fstab
MR_INFOS := $(LOCAL_PATH)/multirom/mrom_infos
MR_KEXEC_MEM_MIN := 0x06200000
MR_DEVICE_VARIANTS := matissewifi matissewifiue matisse3g 
MR_KEXEC_DTB := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := $(LOCAL_PATH)/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_CONTINUOUS_FB_UPDATE := true
#MR_DEVICE_HOOKS := $(LOCAL_PATH)/multirom/mr_hooks.c
#MR_DEVICE_HOOKS_VER := 3

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwcnss_qmi \
    wcnss_service

# LVM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lvm/lvm:root/sbin/lvm \
    $(LOCAL_PATH)/lvm/lvm.conf:root/lvm/etc/lvm.conf

