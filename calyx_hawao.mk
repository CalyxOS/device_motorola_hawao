#
# SPDX-FileCopyrightText: 2023-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from device
$(call inherit-product, device/motorola/hawao/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := calyx_hawao
PRODUCT_DEVICE := hawao
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g42
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="hawao_g-user 13 T2SES33.73-23-2-13 273c8-da10c release-keys" \
    BuildFingerprint=motorola/hawao_g/hawao:13/T2SES33.73-23-2-13/273c8-da10c:user/release-keys \
    DeviceProduct=hawao_g
