#include "sdkkit.h"
#include "json.h"
#include "SocketClient.h"
#include "message.h"
#include "MessageQueue.h"
#include "SocketManager.h"
#include "CData.h"
#include "cocos2d.h"
#include "CustomPop.h"
#include "LayerLogin.h"


void SDKKitPlateformCallBackImplWrapper_initCallBack(int retStatus, std::string retMessage)
{
    CCLog("SDKKitPlateformCallBackImplWrapper_initCallBack %d %s", retStatus, retMessage.c_str());
}

void SDKKitPlateformCallBackImplWrapper_loginCallBack(int retStatus, std::string s_retMessage, std::string s_loginUserId, std::string s_loginUserName, std::string s_loginAuthToken, std::string s_loginOpenId, int s_flag)
{
    CCLog("SDKKitPlateformCallBackImplWrapper_loginCallBack : %d %s %s %s %s %s", retStatus, s_retMessage.c_str(), s_loginUserId.c_str(), s_loginUserName.c_str(), s_loginAuthToken.c_str(), s_loginOpenId.c_str());

    Json::FastWriter  writer;
    Json::Value person;
    person["username"]= s_loginOpenId;
    person["password"]= "password";
    std::string  json_file=writer.write(person);
    CCLog("%s",json_file.c_str());
    SocketManager::getInstance()->sendMessage(json_file.c_str(), 101);

}

void SDKKitPlateformCallBackImplWrapper_logoutCallBack(int retStatus, std::string s_retMessage)
{
    CCLog("SDKKitPlateformCallBackImplWrapper_logoutCallBack %d %s", retStatus, s_retMessage.c_str());

    CCString* str=CCString::create("toLogin");
    CCScene *scene=CCScene::create();
    CCLayer *layer=LayerLogin::create();
    scene->addChild(layer);
    CCDirector::sharedDirector()->replaceScene(scene);
}

void SDKKitPlateformCallBackImplWrapper_payCallBack(int retStatus, std::string s_retMessage, std::string s_payKitOrderId)
{
    CCLog("SDKKitPlateformCallBackImplWrapper_payCallBack %d %s %s ", retStatus, s_retMessage.c_str(), s_payKitOrderId.c_str());
    CustomPop::show(s_retMessage.c_str());
}

void SDKKitPlateformCallBackImplWrapper_getOrderResultCallBack(int retStatus, std::string s_retMessage, std::string s_orderStatus)
{
    CCLog("SDKKitPlateformCallBackImplWrapper_getOrderResultCallBack %d %s %s", retStatus, s_retMessage.c_str(), s_orderStatus.c_str());
    CustomPop::show(s_retMessage.c_str());
}

void SDKKitPlateformCallBackImplWrapper_exitGameCallBack(int retStatus, std::string s_retMessage)
{
    CCLog("SDKKitPlateformCallBackImplWrapper_exitGameCallBack %d %s", retStatus, s_retMessage.c_str());
    exit(0);
}
