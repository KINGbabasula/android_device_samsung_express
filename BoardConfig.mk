# inherit from common msm8930
-include device/samsung/msm8930-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/express/include

# Kernel
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom user_debug=31 zcache
BOARD_KERNEL_BASE            := 0x80200000
BOARD_MKBOOTIMG_ARGS         := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/samsung/msm8930-common
TARGET_KERNEL_CONFIG         := cyanogen_serrano_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/express/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/express/recovery/recovery_keys.c
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := device/samsung/express/rootdir/fstab.qcom
TARGET_RECOVERY_INITRC := device/samsung/express/rootdir/init.recovery.rc

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5821676544
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/express/bluetooth

# NFC
BOARD_NFC_HAL_SUFFIX := msm8960

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# Use seperate speakerphone device
BOARD_USES_SEPERATED_VOICE_SPEAKER := true

# Use seperate devices for VOIP
BOARD_USES_SEPERATED_VOIP := true

# Use USB Dock Audio
BOARD_HAVE_DOCK_USBAUDIO := true

# Assert
TARGET_OTA_ASSERT_DEVICE := express,i8730,GT-I8730

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8930_serrano_eur_lte_defconfig

# NFC
BOARD_HAVE_NFC := true
