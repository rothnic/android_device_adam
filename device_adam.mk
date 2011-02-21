$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Get a proper init file
PRODUCT_COPY_FILES += \
    device/notionink/adam/init.adam.rc:root/init.adam.rc

# Place wifi files
PRODUCT_COPY_FILES += \
    device/notionink/adam/wifi/bcm4329.ko:system/lib/hw/wlan/bcm4329.ko \
    device/notionink/adam/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/notionink/adam/wifi/dhcpcd.conf:/system/etc/dhcpcd/dhcpcd.conf

# Place permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

$(call inherit-product-if-exists, vendor/notionink/adam/adam-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/notionink/adam/overlay

# Use MDPI artwork
PRODUCT_LOCALES += mdpi

# VOLD
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/etc/vold.adam.fstab:system/etc/vold.fstab

# Media Profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/media_profiles.xml:system/etc/media_profiles.xml

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/notionink/adam/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_adam
PRODUCT_DEVICE := adam
