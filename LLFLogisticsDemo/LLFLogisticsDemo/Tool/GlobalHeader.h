//
//  GlobalHeader.h
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#ifndef GlobalHeader_h
#define GlobalHeader_h

#import "MJRefresh.h"
#import "MJExtension.h"
#import "NSObject+Parse.h"
#import "UIView+Extension.h"
#import "LLFNormalHeader.h"

/// weakSelf
#define LLFWeakSelf(type)   __weak typeof(type) weak##type = type;
#define LLFStrongSelf(type) __strong typeof(type) type = weak##type;

/**屏幕宽度*/
#define ScreenWidth ([UIScreen mainScreen].bounds.size.width)
/**屏幕高度*/
#define ScreenHeight ([UIScreen mainScreen].bounds.size.height)

/**全局字体*/
#define LLFGlobelNormalFont(__VA_ARGS__) ([UIFont systemFontOfSize:LLF_ScaleFont(__VA_ARGS__)])

/**宽度比例*/
#define LLF_ScaleWidth(__VA_ARGS__)  ([UIScreen mainScreen].bounds.size.width/375)*(__VA_ARGS__)

/**高度比例*/
#define LLF_ScaleHeight(__VA_ARGS__)  ([UIScreen mainScreen].bounds.size.height/667)*(__VA_ARGS__)

/**字体比例*/
#define LLF_ScaleFont(__VA_ARGS__)  ([UIScreen mainScreen].bounds.size.width/375)*(__VA_ARGS__)

/**颜色*/
#define LLFColor(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define LLFRGBColor(rgbValue, a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]


/**yes:是iphoneX*/
#define LLFIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

/**状态栏高度*/
#define LLFStatusHeight [[UIApplication sharedApplication] statusBarFrame].size.height

/**导航栏高度*/
#define LLFNavigationBarHeight (LLFIsiPhoneX ? 88 : 64)

#define LLFTabbarHeight (LLFIsiPhoneX ? 83 : 49)
//
#define LLFSafeAreaBottomHeight (LLFIsiPhoneX ? 34 : 0)

#endif /* GlobalHeader_h */
