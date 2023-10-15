#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Derp stuff.
TARGET_DISABLE_EPPE := true
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := derp_sunfish

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 13 TQ3A.230805.001 10316531 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:13/TQ3A.230805.001/10316531:user/release-keys

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
