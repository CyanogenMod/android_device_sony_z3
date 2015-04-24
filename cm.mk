# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, device/sony/z3/full_z3.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D6603
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D6603/D6603:5.0.2/23.1.A.0.690/814068233:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D6603-user 5.0.2 23.1.A.0.690 814068233 release-keys"

PRODUCT_NAME := cm_z3
PRODUCT_DEVICE := z3
