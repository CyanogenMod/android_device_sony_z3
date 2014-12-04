LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),z3)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif
