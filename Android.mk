RECOVERY_PARENT := $(call my-dir)
RECOVERY_VARIANT := $(strip $(RECOVERY_VARIANT))
ifeq ($(RECOVERY_VARIANT),aosp)
	include $(RECOVERY_PARENT)/recovery-aosp/Android.mk
else
ifeq ($(RECOVERY_VARIANT),twrp)
	include $(RECOVERY_PARENT)/recovery-twrp/Android.mk
else
	include $(RECOVERY_PARENT)/recovery/Android.mk
endif
endif
