//
//  NSObject+Parse.h
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Parse)


/** 对 MJExtentsion 的封装，自动判断参数类型，来解析*/
+ (id)llf_parse:(id)responseObj;

@end
