//
//  NSMutableAttributedString+LLFExtension.h
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (LLFExtension)


/**
 简单的修改一段文字的富文本

 @param dictionary 字典
 @param text 控件的文本
 @param rangString 需要修改的字符串
 @return 富文本
 */
+ (NSMutableAttributedString *)llf_setAttributesWithDictionary:(NSDictionary *)dictionary text:(NSString *)text rangString:(NSString *)rangString;

@end
