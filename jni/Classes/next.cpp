
#include "next.h"
#include "FireWork.h"
bool NextLayer::init(){
    if(!CCLayerColor::initWithColor(ccc4(0, 0, 0, 100))){
        return false;
    }
    setTouchEnabled(true);
    return true;
}
void  NextLayer::registerWithTouchDispatcher(){
    CCDirector::sharedDirector()->getTouchDispatcher()->addTargetedDelegate(this,(std::numeric_limits<int>::min()), true);
    //CCLayer::registerWithTouchDispatcher();(std::numeric_limits<int>::min())
    CCLayer::registerWithTouchDispatcher();
}

bool NextLayer::ccTouchBegan(CCTouch* touch, CCEvent* event){
    return true;
}
void NextLayer::ccTouchMoved(CCTouch* touch, CCEvent* event){

}
void NextLayer::ccTouchEnded(CCTouch* touch, CCEvent* event){
    CCLog("sdfqwe");
    Fire * fir=(Fire *)this->getParent();
    fir->nextchat();
}
