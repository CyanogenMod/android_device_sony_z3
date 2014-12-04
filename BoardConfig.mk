# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common shinano definitions
include device/sony/shinano-common/BoardConfigCommon.mk

# inherit from the proprietary version
#-include vendor/sony/z3/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := D6603,D6633,D6643,z3

TARGET_SPECIFIC_HEADER_PATH += device/sony/z3/include

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/z3/bluetooth

BOARD_HARDWARE_CLASS += device/sony/z3/cmhw

# Kernel properties
TARGET_KERNEL_CONFIG := cm_shinano_leo_defconfig

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656259072

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/sony/z3
