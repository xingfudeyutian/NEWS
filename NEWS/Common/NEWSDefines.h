//
//  NEWSDefines.h
//  NEWS
//
//  Created by hanyutong on 2017/9/14.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#ifndef NEWSDefines_h
#define NEWSDefines_h


#define kDevice_Is_iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

//设备屏幕大小
#define MAINSCREEN_FRAME   [[UIScreen mainScreen] bounds]
//设备屏幕宽
#define MAINSCREEN_WIDTH  MAINSCREEN_FRAME.size.width
//设备屏幕高
#define MAINSCREEN_HEIGHT MAINSCREEN_FRAME.size.height

#define NavBarHeight (kDevice_Is_iPhoneX? 88 : 64)
#define TabBarHeight (kDevice_Is_iPhoneX ? 83 : 49)

//通用间距

#define Mergin   20







#endif /* NEWSDefines_h */
