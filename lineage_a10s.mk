#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a10s device
$(call inherit-product, device/samsung/a10s/device.mk)

# Inherit from product_launched_with_p
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Call proprietary lpm setup
$(call inherit-product, vendor/samsung/lpm/lpm-a10s.mk)

PRODUCT_DEVICE := a10s
PRODUCT_NAME := lineage_a10s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A107F
PRODUCT_MANUFACTURER := samsung
RELAX_USES_LIBRARY_CHECK=true
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a10sxx-user 11 RP1A.200720.012 A107FXXS8CWD3 release-keys"

BUILD_FINGERPRINT := samsung/a10sxx/a10s:11/RP1A.200720.012/A107FXXS8CWD3:user/release-keys
