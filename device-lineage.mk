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

# Camera
PRODUCT_PACKAGES += \
    Snap \

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# GMS
WITH_GMS_FI := true

# IMS/Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    telephony-ext \

# Lights
PRODUCT_PACKAGES += \
    hardware.google.light@1.0.vendor \

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm \

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    vendor/codeaurora/telephony/ims \

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Partitions
AB_OTA_PARTITIONS += \
    vendor \

PRODUCT_PACKAGES += \
    netutils-wrapper-1.0 \

# Properties
# Native video calling
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.vt_avail_ovr=1 \

TARGET_VENDOR_PROP := $(LOCAL_PATH)/vendor.prop

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service \

# Vendor packages
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libjson \
    libtinyxml \
    libwifi-hal-qcom \

# Vendor Security Patch Level
VENDOR_SECURITY_PATCH := "2020-09-05"