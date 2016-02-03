# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

BOARD_VENDOR := samsung

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

BOARD_KERNEL_CMDLINE := androidboot.console=null androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000 --dt device/samsung/matissewifi/dt.img

# prebuilt kernel
# else uncomment below to build from source
TARGET_KERNEL_SOURCE := kernel/samsung/matissevewifi
#TARGET_KERNEL_CONFIG := cyanogenmod_matissewifi_defconfig

# Toolchains
ANDROID_TOOLCHAIN := "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-sm/bin/"
ANDROID_TOOLCHAIN_PREFIX := arm-linux-androideabi-
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-eabi-4.9-sm/bin/"

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
BOARD_NEEDS_LZMA_MINIGZIP := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USES_MMCUTILS := true
TARGET_PREBUILT_KERNEL := device/samsung/matissewifi/kernel
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TARGET_RECOVERY_INITRC := device/samsung/matissewifi/recovery/init.rc
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun/file"


# TWRP Build Flags
TW_THEME := landscape_mdpi
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_NO_EXFAT_FUSE := true
TW_NO_SCREEN_BLANK := true
TW_HAS_MTP := true
TW_USE_TOOLBOX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
#TW_INCLUDE_NTFS_3G := true
#TW_EXCLUDE_SUPERSU := true
#TW_TARGET_USES_QCOM_BSP := true

# Vendor Init
TARGET_PLATFORM_DEVICE_BASE := /devices/msm_sdcc.1/
#TARGET_UNIFIED_DEVICE := true
#TARGET_INIT_VENDOR_LIB := libinit_msm
#TARGET_LIBINIT_DEFINES_FILE := device/samsung/matissewifi/init/init_matissewifi.c

##==================================
RECOVERY_VARIANT := multirom

# MultiROM config
BOARD_MKBOOTIMG_ARGS += --board mrom$(shell date -u +%Y%m%d)-01
MR_DEVICE_VARIANTS := matissewifi
MR_DEVICE_VARIANTS += matissewifiue
MR_DEVICE_VARIANTS += matisse3g
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/matissewifi/multirom/mr_init_devices.c
MR_DPI := mdpi
#MR_DPI_MUL := 1
MR_DPI_FONT := 160
MR_DEVICE_HOOKS := device/samsung/matissewifi/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4
MR_FSTAB := device/samsung/matissewifi/recovery.fstab
MR_USE_MROM_FSTAB := false
MR_KEXEC_MEM_MIN := 0x06200000
MR_KEXEC_DTB := true
#MR_INFOS := device/samsung/matissewifi/multirom/mrom_infos
#MR_ENCRYPTION := true
#MR_ENCRYPTION_SETUP_SCRIPT := device/samsung/matissewifi/multirom/mr_cp_crypto.sh
#MR_PIXEL_FORMAT := "RGBX_8888"
#MR_USE_QCOM_OVERLAY := true
#MR_QCOM_OVERLAY_HEADER := device/samsung/matissewifi/multirom/mr_qcom_overlay.h
#MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
#MR_CONTINUOUS_FB_UPDATE := true
#MR_DEVICE_HOOKS := device/samsung/matissewifi/multirom/mr_hooks.c
#MR_DEVICE_HOOKS_VER := 3
MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true
