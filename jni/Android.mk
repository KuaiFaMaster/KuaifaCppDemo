LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared
LOCAL_DISABLE_FORMAT_STRING_CHECKS := true
LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := 	hellocpp/main.cpp \
										Classes/SdkCallback.cpp \
										Classes/AnimatePacker.cpp \
										Classes/AppDelegate.cpp \
										Classes/CData.cpp \
										Classes/FireWork.cpp \
										Classes/GameOver.cpp \
										Classes/HelloWorldScene.cpp \
										Classes/LodingLayer.cpp \
										Classes/PersonFire.cpp \
										Classes/TeXiao.cpp \
										Classes/UserDataModel.cpp \
										Classes/buzhen/heroItem.cpp \
										Classes/buzhen/newBuZhen.cpp \
										Classes/employment/friendemploy.cpp \
										Classes/employment/friendemploycell.cpp \
										Classes/employment/friendemploylog.cpp \
										Classes/employment/friendemploypop.cpp \
										Classes/employment/friendinfo.cpp \
										Classes/employment/friendmain.cpp \
										Classes/extentionClass/MyMenu.cpp \
										Classes/extentionClass/MyTableView.cpp \
										Classes/extentionClass/network/ByteBuffer.cpp \
										Classes/extentionClass/network/MessageQueue.cpp \
										Classes/extentionClass/network/SocketClient.cpp \
										Classes/extentionClass/network/SocketManager.cpp \
										Classes/extentionClass/network/Util.cpp \
										Classes/extentionClass/network/message.cpp \
										Classes/goodsItem.cpp \
										Classes/headFile/zhujiemian/ArenaWindow.cpp \
										Classes/headFile/zhujiemian/CustomPop.cpp \
										Classes/headFile/zhujiemian/LevelMap.cpp \
										Classes/headFile/zhujiemian/MailInfo.cpp \
										Classes/headFile/zhujiemian/MailRead.cpp \
										Classes/headFile/zhujiemian/MailRenderer.cpp \
										Classes/headFile/zhujiemian/MailWindow.cpp \
										Classes/headFile/zhujiemian/MailWrite.cpp \
										Classes/headFile/zhujiemian/homePage.cpp \
										Classes/headFile/zhujiemian/popwindow.cpp \
										Classes/headFile/zhujiemian/zhuangtaiLoad.cpp \
										Classes/hecheng/CHecheng.cpp \
										Classes/hecheng/hcbag.cpp \
										Classes/hecheng/hcgoodsitem.cpp \
										Classes/hecheng/hctooltip.cpp \
										Classes/json/src/lib_json/json_reader.cpp \
										Classes/json/src/lib_json/json_value.cpp \
										Classes/json/src/lib_json/json_writer.cpp \
										Classes/loginregister/LayerLogin.cpp \
										Classes/loginregister/logo.cpp \
										Classes/loginregister/startAnimate.cpp \
										Classes/loginregister/xuanren.cpp \
										Classes/next.cpp \
										Classes/personalinfo.cpp \
										Classes/skillList.cpp \
										Classes/tiplayer.cpp \
										Classes/utils/language/LanguageManager.cpp \
										Classes/utils/xml/MyXmlParser.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/Classes \
					$(LOCAL_PATH)/Classes/utils \
					$(LOCAL_PATH)/Classes/utils \
					$(LOCAL_PATH)/Classes/utils/xml \
					$(LOCAL_PATH)/Classes/loginregister \
					$(LOCAL_PATH)/Classes/hecheng \
					$(LOCAL_PATH)/Classes/buzhen \
					$(LOCAL_PATH)/Classes/json/include/json \
					$(LOCAL_PATH)/Classes/headFile \
					$(LOCAL_PATH)/Classes/headFile/zhujiemian \
					$(LOCAL_PATH)/Classes/employment \
					$(LOCAL_PATH)/Classes/extentionClass/network \
					$(LOCAL_PATH)/Classes/extentionClass \
					$(LOCAL_PATH)/lua_sdkkit \


LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static
LOCAL_WHOLE_STATIC_LIBRARIES += lua_sdkkit

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
$(call import-module,lua_sdkkit)
