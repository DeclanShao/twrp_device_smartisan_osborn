#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := osborn

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := osborn
PRODUCT_NAME := twrp_osborn
PRODUCT_BRAND := Smartisan
PRODUCT_MODEL := OS105
PRODUCT_MANUFACTURER := Smartisan

# Verity
PRODUCT_SUPPORTS_BOOT_SIGNER := true
PRODUCT_SUPPORTS_VERITY := true
PRODUCT_SUPPORTS_VERITY_FEC := true
PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/smartisan/osborn/device.mk)
