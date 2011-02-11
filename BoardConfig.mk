USE_CAMERA_STUB := true
BOARD_USE_FROYO_LIBCAMERA := true

# inherit from the proprietary version
-include vendor/notionink/adam/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_BOOTLOADER_BOARD_NAME := adam
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
TARGET_HAVE_TEGRA_ERRATA_657451 := true
TARGET_USES_OLD_LIBSENSORS_HAL := true

# custom recovery ui
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/notionink/adam/recovery/recovery_ui.c

TARGET_BOOTLOADER_BOARD_NAME := adam

# Modem
TARGET_NO_RADIOIMAGE := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := wlan0
WIFI_DRIVER_MODULE_PATH     := "/system/lib/hw/wlan/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/lib/hw/wlan/fw_bcm4329.bin nvram_path=/system/lib/hw/wlan/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CSR := true

BOARD_KERNEL_CMDLINE :=  mem=448M@0M nvmem=64M@448M mem=512M@512M vmalloc=192M video=tegrafb console=ttyS0,115200n8 usbcore.old_scheme_first=1 cpuid=200102 devicetype=1002 btmac=737b8c131a00 tegraboot=nand mtdparts=tegra_nand:16384K@7424K(misc),16384K@24320K(recovery),16384K@41216K(boot),204800K@58112K(system),260224K@263552K(cache)
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true

# Use dirty hack to allow froyo libaudio
BOARD_USE_KINETO_COMPATIBILITY := true

BOARD_EGL_CFG := device/notionink/adam/egl.cfg

# fix this up by examining /proc/mtd on a running device
# dev:    size   erasesize  name
# mtd0: 01000000 00020000 "misc"
# mtd1: 01000000 00020000 "recovery"
# mtd2: 01000000 00020000 "boot"
# mtd3: 0c800000 00020000 "system"
# mtd4: 2fba0000 00020000 "cache"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
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
