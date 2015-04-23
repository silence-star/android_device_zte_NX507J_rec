$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/nubia/NX507J/NX507J-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nubia/NX507J/overlay

LOCAL_PATH := device/nubia/NX507J
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_NX507J
PRODUCT_DEVICE := NX507J

PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_NAME=NX507J \
     PRODUCT_DEFAULT_LANGUAGE=zh \
     PRODUCT_DEFAULT_REGION=CN

PRODUCT_PROPERTY_OVERRIDES += \
     persist.sys.timezone=Asia/Shanghai

# Ramdisk
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom \
     $(LOCAL_PATH)/ueventd.qcom.rc:root/ueventd.qcom.rc
