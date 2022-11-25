LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_ANDROID_LIBRARIES := \
    android-support-v4 \
    android-support-v13

LOCAL_STATIC_JAVA_LIBRARIES := \
    xmp_toolkit \
    mp4parser

LOCAL_SRC_FILES := \
    $(call all-java-files-under, src) \
    $(call all-renderscript-files-under, src)

LOCAL_RESOURCE_DIR += $(LOCAL_PATH)/res

LOCAL_AAPT_FLAGS := --auto-add-overlay \
    --extra-packages com.android.gallery3d

LOCAL_USE_AAPT2 := true

LOCAL_PACKAGE_NAME := WallpaperCropper2

LOCAL_SDK_VERSION := current
LOCAL_SYSTEM_EXT_MODULE := true

LOCAL_JNI_SHARED_LIBRARIES := \
    libjni_eglfence_wc \
    libjni_filtershow_filters_wc \
    libjni_jpegstream_wc
LOCAL_MULTILIB := both

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_JAVA_LIBRARIES := org.apache.http.legacy
LOCAL_USES_LIBRARIES := org.apache.http.legacy

include $(BUILD_PACKAGE)

ifeq ($(strip $(LOCAL_PACKAGE_OVERRIDES)),)

include $(call all-makefiles-under, $(LOCAL_PATH))

endif
