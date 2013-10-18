# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x854

# Inherit device configuration
$(call inherit-product, device/huawei/c8815/c8815.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Setup device configuration
PRODUCT_NAME := cm_c8815
PRODUCT_DEVICE := c8815
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI C8815
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := C8815
CM_BUILD := c8815-Chin

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=c8815 \
	BUILD_FINGERPRINT=huawei/c8815:4.1.2/JZO54K/223160:userdebug/release \
	PRIVATE_BUILD_DESC="huawei-chin 4.1.2 JZO54K 223160 release" \
	BUILD_NUMBER=223160

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
