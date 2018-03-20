//
//  UIView+Extension.h
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic, assign) CGFloat llf_top;
@property (nonatomic, assign) CGFloat llf_bottom;
@property (nonatomic, assign) CGFloat llf_left;
@property (nonatomic, assign) CGFloat llf_right;
@property (nonatomic, assign) CGFloat llf_x;
@property (nonatomic, assign) CGFloat llf_y;
@property (nonatomic, assign) CGFloat llf_centerX;
@property (nonatomic, assign) CGFloat llf_centerY;
@property (nonatomic, assign) CGFloat llf_width;
@property (nonatomic, assign) CGFloat llf_height;
@property (nonatomic, assign) CGSize llf_size;
@property (nonatomic, assign) CGPoint llf_origin;

- (instancetype)llf_cornerAllCornersWithCornerRadius:(CGFloat)cornerRadius;

@end
