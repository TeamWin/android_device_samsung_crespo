# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardConfigVendor.mk can override it
BOARD_USES_GENERIC_AUDIO := false

BOARD_USES_LIBSECRIL_STUB := true

BOARD_NO_PAGE_FLIPPING := true
BOARD_NO_32BPP := true

#Kernel Panic Fix
ARCH_ARM_HAVE_ARMV7A_BUG := true

# Use the non-open-source parts, if they're present
-include vendor/samsung/crespo/BoardConfigVendor.mk

# Use the parts that are common between all crespos
include device/samsung/crespo/BoardConfigCommon.mk
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_REAL_SDCARD := true
DEVICE_RESOLUTION := 480x800
SP1_NAME := "efs"
SP1_DISPLAY_NAME := "EFS"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
