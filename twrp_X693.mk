#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X693 device
$(call inherit-product, device/infinix/X693/device.mk)

PRODUCT_DEVICE := X693
PRODUCT_NAME := twrp_X693
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Note 10
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x693_h697-user 11 RP1A.200720.011 255380 release-keys"

BUILD_FINGERPRINT := Infinix/X693-GL/Infinix-X693:11/RP1A.200720.011/230224V656:user/release-keys
