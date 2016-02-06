# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/matissewifi/init_matisse.c

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
#ANDROID_COMMON_BUILD_MK := true
#TARGET_USES_ION:= true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.console=null androidboot.hardware=qcom
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_DTBTOOL_ARGS   := --force-v2
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)


# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/samsung/matissewifi/kernel
# else uncomment below to build from source
TARGET_KERNEL_SOURCE := kernel/samsung/matissewifi
TARGET_KERNEL_CONFIG := twrp_matissewifi_defconfig
BOARD_MKBOOTIMG_ARGS += --dt device/samsung/matissewifi/dt.img

# Charging mode
TARGET_PROVIDES_LIBHEALTHD := true
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGER_SHOW_PERCENTAGE := true

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

#TW_CUSTOM_THEME := device/samsung/matissewifi/multirom/twres
TW_THEME := landscape_mdpi
#TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
#TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true
#TW_TARGET_USES_QCOM_BSP := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# MultiROM config
#TARGET_RECOVERY_IS_MULTIROM := true
BOARD_MKBOOTIMG_ARGS += --board mrom$(shell date -u +%Y%m%d)-01
MR_DEVICE_VARIANTS := matissewifi
MR_DEVICE_VARIANTS += matissewifiue
MR_DEVICE_VARIANTS += matisse3g
MR_DEVICE_SPECIFIC_VERSION := k
MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/matissewifi/multirom/mr_init_devices.c
MR_DPI := mdpi
MR_DPI_MUL := 1
MR_DPI_FONT := 160
MR_FSTAB := device/samsung/matissewifi/recovery.fstab
MR_USE_MROM_FSTAB := true
MR_INFOS := device/samsung/matissewifi/multirom/mrom_infos
MR_KEXEC_MEM_MIN := 0x06200000
MR_KEXEC_DTB := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/samsung/matissewifi/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_CONTINUOUS_FB_UPDATE := true
MR_DEVICE_HOOKS := device/samsung/matissewifi/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 3
