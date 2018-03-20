//
//  NSString+LLFSizeExtension.h
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (LLFSizeExtension)

- (CGSize)llf_sizeWithFont:(UIFont *)font maxH:(CGFloat)maxH;

- (CGSize)llf_sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW;

- (CGSize)llf_sizeWithFont:(UIFont *)font;

@end
