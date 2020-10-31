
#
# Copyright (C) 2020 The LineageOS Project
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

# DTBO
TARGET_NEEDS_DTBOIMAGE := true

# KERNEL
BOARD_KERNEL_IMAGE_NAME := Image.lz4
KERNEL_LD := LD=ld.lld
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/google/sunfish
TARGET_KERNEL_CONFIG := sunfish_defconfig

# VBMETA
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS="--set_hashtree_disabled_flag"

# vendor.img
ifneq ($(PRODUCT_USE_DYNAMIC_PARTITIONS), true)
BOARD_VENDORIMAGE_PARTITION_SIZE := 562024448
endif
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

-include vendor/google/sunfish/BoardConfigVendor.mk