USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/matissewifi/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

# Platform

TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset  0x02000000 --dt device/samsung/matissewifi/dtb --tags_offset 0x01E00000
BOARD_KERNEL_SEPARATED_DT := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USES_ION:= true

#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#TARGET_RECOVERY_INITRC := device/samsung/matissewifi/init.rc

# Kernel Configs
TARGET_KERNEL_SOURCE := kernel/samsung/matissewifi
#TARGET_KERNEL_CONFIG := twrp_matissewifi_defconfig
#BOARD_KERNEL_IMAGE_NAME := zImage
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := true
#ARM_EABI_TOOLCHAIN := /builds/omni-5.1/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#KERNEL_TOOLCHAIN_PREFIX :=
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
#TARGET_USES_UNCOMPRESSED_KERNEL := true
#TARGET_KERNEL_SELINUX_CONFIG :=
#TARGET_KERNEL_VARIANT_CONFIG :=
#VARIANT_CONFIG :=
#TIMA_DEFCONFIG :=
TARGET_PREBUILT_KERNEL := device/samsung/matissewifi/zImage
#TARGET_SPECIFIC_HEADER_PATH := device/samsung/matissewifi/include

BOARD_NEEDS_LZMA_MINIGZIP := true

TW_NO_USB_STORAGE := false
TW_HAS_USB_STORAGE := true

CUSTOM_LUN_FILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

RECOVERY_VARIANT := twrp

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := landscape_mdpi
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 75
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_TARGET_USES_QCOM_BSP := true
#TW_NEW_ION_HEAP := true
