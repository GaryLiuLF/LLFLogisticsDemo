//
//  NSMutableAttributedString+LLFExtension.m
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import "NSMutableAttributedString+LLFExtension.h"

@implementation NSMutableAttributedString (LLFExtension)

+ (NSMutableAttributedString *)llf_setAttributesWithDictionary:(NSDictionary *)dictionary text:(NSString *)text rangString:(NSString *)rangString {
    NSMutableAttributedString *rateLabelAttr = [[NSMutableAttributedString alloc]initWithString:text];
    if (rangString.length <= 0 || text.length <= 0) {
        return rateLabelAttr;
    }
    [rateLabelAttr setAttributes:dictionary range:[text rangeOfString:rangString]];
    // 赋值
    return rateLabelAttr;
}


@end
