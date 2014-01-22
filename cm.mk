#
# Copyright 2014 The Android Open Source Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/c8815/full_c8815.mk)

# Correct boot animation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Device name
PRODUCT_NAME := cm_c8815
PRODUCT_DEVICE := c8815

# CM packages
PRODUCT_PACKAGES += \
    Torch
#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=c8815 \
	BUILD_FINGERPRINT=huawei/c8815:4.4.2/JZO54K/223160:userdebug/release \
	PRIVATE_BUILD_DESC="huawei-chin 4.4.2 JZO54K 223160 release" \
	BUILD_NUMBER=223160

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
