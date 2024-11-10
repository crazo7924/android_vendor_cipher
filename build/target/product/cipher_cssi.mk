# Copyright (C) 2023 The CipherOS Project
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

$(call inherit-product, device/generic/common/gsi_arm64.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit cipher common
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

# Allow building generic target & ota tools
TARGET_FORCE_OTA_PACKAGE := true
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true
TARGET_NO_KERNEL_OVERRIDE := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Target identifier
PRODUCT_NAME := cipher_cssi
PRODUCT_BRAND := Cipher
PRODUCT_MODEL := Cipher Single System Image
PRODUCT_MANUFACTURER := Cipher
PRODUCT_DEVICE := generic_arm64

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS :=
