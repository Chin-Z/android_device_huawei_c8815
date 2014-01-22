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
USE_CAMERA_STUB := true
# Inherit from the proprietary version
-include vendor/huawei/c8815/BoardConfigVendor.mk

# Architecture and CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_ARCH_LOWMEM := true
TARGET_CPU_SMP := true

TARGET_BOOTLOADER_BOARD_NAME := c8815
TARGET_OTA_ASSERT_DEVICE := c8815,hwc8815

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP -DQCOM_HARDWARE
TARGET_USES_ION := true
TARGET_USES_QCOM_BSP := true

BOARD_WANTS_EMMC_BOOT := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := legacy

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/c8815/bluetooth

# Camera
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# Graphics
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/huawei/c8815/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
USE_OPENGL_RENDERER := true

# Kernel 
TARGET_PREBUILT_KERNEL := device/huawei/c8815/kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei loglevel=1
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048

# Hardware
BOARD_HARDWARE_CLASS := device/huawei/c8815/cmhw


# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 183500800
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/c8815/recovery/graphics.c
TARGET_RECOVERY_FSTAB := device/huawei/c8815/rootdir/fstab.huawei
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/c8815/recovery/recovery-keys.c
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_RECOVERY_INITRC := device/huawei/c8815/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/c8815/ril/

# SELinux
BOARD_SEPOLICY_DIRS += device/huawei/c8815/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    file.te

# USB
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 19
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1

# Web Rendering
ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_FORCE_CPU_UPLOAD := true

# Wi-Fi
BOARD_WLAN_DEVICE                := ath6kl
#BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_ath6kl
#BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/ar6000.ko"
WIFI_DRIVER_MODULE_NAME          := "ar6000"
WIFI_EXT_MODULE_PATH             := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME             := "cfg80211"
WIFI_TEST_INTERFACE              := "sta"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_P2P          := "p2p"
