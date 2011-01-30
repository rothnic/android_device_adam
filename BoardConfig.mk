USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/notionink/adam/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_BOOTLOADER_BOARD_NAME := adam

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

# custom recovery ui
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/nvidia/harmony/recovery/recovery_ui.c

# fix this up by examining /proc/mtd on a running device
#dev:    size   erasesize  name
#mtd0: 01000000 00020000 "misc"
#mtd1: 01000000 00020000 "recovery"
#mtd2: 01000000 00020000 "boot"
#mtd3: 0c800000 00020000 "system"
#mtd4: 0fe20000 00020000 "cache"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x10000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x10000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION := true

# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true

# use pre-kernel.35 vold usb mounting
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

TARGET_PREBUILT_KERNEL := device/notionink/adam/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true

# Below is a sample of how you can tweak the mount points using the board config.
# This is for the Samsung Galaxy S.
# Feel free to tweak or remove this code.
# If you want to add/tweak a mount point, the BOARD_X_FILESYSTEM_OPTIONS are optional.
BOARD_DATA_DEVICE := /dev/block/mmcblk3p2
BOARD_DATA_FILESYSTEM := ext3
BOARD_CACHE_DEVICE := /dev/block/mtdblock4
BOARD_CACHE_FILESYSTEM := yaffs2
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk3p1 	
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk2p1
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk3p1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk2p1
#BOARD_HAS_DATADATA := true
#BOARD_DATADATA_DEVICE := /dev/block/stl10
#BOARD_DATADATA_FILESYSTEM := auto
#BOARD_DATADATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
#BOARD_SYSTEM_DEVICE := /dev/block/stl9
#BOARD_SYSTEM_FILESYSTEM := auto
#BOARD_SYSTEM_FILESYSTEM_OPTIONS := llw,check=no
