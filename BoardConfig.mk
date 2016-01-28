# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

TARGET_USES_ION:= true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait

BOARD_KERNEL_CMDLINE := androidboot.console=null androidboot.hardware=qcom

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000 --dt device/samsung/matissewifi/dt.img

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/samsung/matissewifi/kernel
# else uncomment below to build from source
TARGET_KERNEL_SOURCE := kernel/samsung/matissewifi
# TARGET_KERNEL_CONFIG := twrp_matissewifi_defconfig

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_NEEDS_LZMA_MINIGZIP := true
BOARD_SUPPRESS_SECURE_ERASE := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

TW_THEME := landscape_mdpi
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 75
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_TARGET_USES_QCOM_BSP := true

# MULTIROM
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := $(LOCAL_PATH)/multirom/mr_init_devices.c
MR_DPI := mdpi
MR_DPI_MUL := 1
MR_DPI_FONT := 160
MR_FSTAB := $(LOCAL_PATH)/recovery.fstab
MR_INFOS := $(LOCAL_PATH)/multirom/mrom_infos
MR_KEXEC_MEM_MIN := 0x06200000
MR_DEVICE_VARIANTS := matissewifi matissewifiue matisse3g 
MR_KEXEC_DTB := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := $(LOCAL_PATH)/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_CONTINUOUS_FB_UPDATE := true
MR_DEVICE_HOOKS := $(LOCAL_PATH)/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 3
