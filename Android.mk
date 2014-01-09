LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PROGUARD_FLAG_FILES := proguard.flags


LOCAL_STATIC_JAVA_LIBRARIES := \
    sandroid-support-v4 \
    sandroid-support-v13

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := DSPManager

LOCAL_OVERRIDES_PACKAGES := MusicFX

include $(BUILD_PACKAGE)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
     sandroid-support-v13:libs/sandroid-support-v13.jar \
     sandroid-support-v4:libs/sandroid-support-v4.jar

include $(BUILD_MULTI_PREBUILT)
# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
