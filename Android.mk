# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(realpath $(call my-dir))

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := amxx_reapi

#LOCAL_C_INCLUDES += \
#	$(HLSDK)/dlls \
#	$(HLSDK)/public \
#	$(HLSDK)/common \
#	$(HLSDK)/engine \
#	$(HLSDK)/pm_shared \
#	$(HLSDK)/game_shared \
#	$(METAMOD)/metamod \

LOCAL_C_INCLUDES += $(LOCAL_PATH)/reapi/common \
	$(LOCAL_PATH)/reapi/msvc \
	$(LOCAL_PATH)/reapi/include/cssdk/public \
	$(LOCAL_PATH)/reapi/include/cssdk/public/tier0 \
	$(LOCAL_PATH)/reapi/include/cssdk/engine \
	$(LOCAL_PATH)/reapi/include/cssdk/common \
	$(LOCAL_PATH)/reapi/include/cssdk/dlls \
	$(LOCAL_PATH)/reapi/include/cssdk/dlls/API \
	$(LOCAL_PATH)/reapi/include/cssdk/dlls/bot \
	$(LOCAL_PATH)/reapi/include/cssdk/dlls/hostage \
	$(LOCAL_PATH)/reapi/include/cssdk/game_shared \
	$(LOCAL_PATH)/reapi/include/cssdk/game_shared/bot \
	$(LOCAL_PATH)/reapi/include/cssdk/pm_shared \
	$(LOCAL_PATH)/reapi/include \
	$(LOCAL_PATH)/reapi/include/metamod \
	$(LOCAL_PATH)/reapi/src \
	$(LOCAL_PATH)/reapi/src/mods \
	$(LOCAL_PATH)/reapi/src/natives \
	$(LOCAL_PATH)/reapi/version

LOCAL_CFLAGS += -Dstrcmpi=strcasecmp -D_snprintf=snprintf

LOCAL_SRC_FILES := \
    $(LOCAL_PATH)/reapi/common/info.cpp \
    $(LOCAL_PATH)/reapi/include/cssdk/common/parsemsg.cpp \
    $(LOCAL_PATH)/reapi/include/cssdk/engine/crc32c.cpp \
    $(LOCAL_PATH)/reapi/include/cssdk/engine/sys_shared.cpp \
    $(LOCAL_PATH)/reapi/include/cssdk/public/interface.cpp \
    $(LOCAL_PATH)/reapi/src/amxxmodule.cpp \
    $(LOCAL_PATH)/reapi/src/api_config.cpp \
    $(LOCAL_PATH)/reapi/src/dllapi.cpp \
    $(LOCAL_PATH)/reapi/src/engine_api.cpp \
    $(LOCAL_PATH)/reapi/src/entity_callback.cpp \
    $(LOCAL_PATH)/reapi/src/hook_manager.cpp \
    $(LOCAL_PATH)/reapi/src/hook_callback.cpp \
    $(LOCAL_PATH)/reapi/src/hook_list.cpp \
    $(LOCAL_PATH)/reapi/src/h_export.cpp \
    $(LOCAL_PATH)/reapi/src/member_list.cpp \
    $(LOCAL_PATH)/reapi/src/main.cpp \
    $(LOCAL_PATH)/reapi/src/meta_api.cpp \
    $(LOCAL_PATH)/reapi/src/mods/mod_rechecker_api.cpp \
    $(LOCAL_PATH)/reapi/src/mods/mod_regamedll_api.cpp \
    $(LOCAL_PATH)/reapi/src/mods/mod_rehlds_api.cpp \
    $(LOCAL_PATH)/reapi/src/mods/mod_reunion_api.cpp \
    $(LOCAL_PATH)/reapi/src/mods/mod_vtc_api.cpp \
    $(LOCAL_PATH)/reapi/src/mods/queryfile_handler.cpp \
    $(LOCAL_PATH)/reapi/src/natives/natives_common.cpp \
    $(LOCAL_PATH)/reapi/src/natives/natives_hookchains.cpp \
    $(LOCAL_PATH)/reapi/src/natives/natives_members.cpp \
    $(LOCAL_PATH)/reapi/src/natives/natives_misc.cpp \
    $(LOCAL_PATH)/reapi/src/natives/natives_rechecker.cpp \
    $(LOCAL_PATH)/reapi/src/natives/natives_reunion.cpp \
    $(LOCAL_PATH)/reapi/src/natives/natives_vtc.cpp \
    $(LOCAL_PATH)/reapi/src/precompiled.cpp \
    $(LOCAL_PATH)/reapi/src/reapi_utils.cpp \
    $(LOCAL_PATH)/reapi/src/sdk_util.cpp \
    $(LOCAL_PATH)/reapi/version/version.cpp \

include $(BUILD_SHARED_LIBRARY)
