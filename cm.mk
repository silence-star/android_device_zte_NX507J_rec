## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := NX507J

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/NX507J/device_NX507J.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX507J
PRODUCT_NAME := cm_NX507J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX507J
PRODUCT_MANUFACTURER := nubia
