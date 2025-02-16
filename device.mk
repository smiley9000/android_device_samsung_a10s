#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a10s

# API levels
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_EXTRA_VNDK_VERSIONS := 30

# Bluetooth
PRODUCT_PACKAGES += \
    audio.sysbta.default \
    android.hardware.bluetooth.audio-service-system

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/bluetooth/audio/config/sysbta_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration.xml \
    $(DEVICE_PATH)/bluetooth/audio/config/sysbta_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration_7_0.xml

# APNs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.ims.xml \
	$(DEVICE_PATH)/biometrics/wosface.hardware.biometrics.face@1.0-service.rc:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/30/etc/init/wosface.hardware.biometrics.face@1.0-service.rc \

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder

# LPM
PRODUCT_PACKAGES += \
    libsuspend 

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

PRODUCT_PACKAGES += \
    SystemUIOverlay_JDM_A10s \
    FrameworksResOverlay_JDM_A10s

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    fstab.mt6765 \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6762.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    init.recovery.mt6762.rc \
    init.recovery.mt6765.rc \
    init.recovery.samsung.rc \

# Screen density
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Wi-Fi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay

# Inherit the proprietary files
# $(call inherit-product, vendor/samsung/a10s/a10s-vendor.mk)
