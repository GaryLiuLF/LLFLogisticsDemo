//
//  UIView+Extension.m
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (CGFloat)llf_top {
    return self.frame.origin.y;
}

- (void)setLlf_top:(CGFloat)llf_top {
    CGRect frame = self.frame;
    frame.origin.y = llf_top;
    self.frame = frame;
}

- (CGFloat)llf_left {
    return self.frame.origin.x;
}

- (void)setLlf_left:(CGFloat)llf_left {
    CGRect frame = self.frame;
    frame.origin.x = llf_left;
    self.frame = frame;
}

- (CGFloat)llf_right {
    return CGRectGetMaxX(self.frame);
}

- (void)setLlf_right:(CGFloat)llf_right {
    self.llf_x = llf_right - self.llf_width;
}


- (CGFloat)llf_bottom {
    return CGRectGetMaxY(self.frame);
}

- (void)setLlf_bottom:(CGFloat)llf_bottom {
    self.llf_y = llf_bottom - self.llf_height;
}

- (void)setLlf_x:(CGFloat)llf_x {
    CGRect frame = self.frame;
    frame.origin.x = llf_x;
    self.frame = frame;
}

- (void)setLlf_y:(CGFloat)llf_y
{
    CGRect frame = self.frame;
    frame.origin.y = llf_y;
    self.frame = frame;
}

- (CGFloat)llf_x
{
    return self.frame.origin.x;
}

- (CGFloat)llf_y
{
    return self.frame.origin.y;
}

- (void)setLlf_centerX:(CGFloat)llf_centerX
{
    CGPoint center = self.center;
    center.x = llf_centerX;
    self.center = center;
}

- (CGFloat)llf_centerX
{
    return self.center.x;
}

- (void)setLlf_centerY:(CGFloat)llf_centerY
{
    CGPoint center = self.center;
    center.y = llf_centerY;
    self.center = center;
}

- (CGFloat)llf_centerY
{
    return self.center.y;
}

- (void)setLlf_width:(CGFloat)llf_width
{
    CGRect frame = self.frame;
    frame.size.width = llf_width;
    self.frame = frame;
}

- (void)setLlf_height:(CGFloat)llf_height
{
    CGRect frame = self.frame;
    frame.size.height = llf_height;
    self.frame = frame;
}

- (CGFloat)llf_height
{
    return self.frame.size.height;
}

- (CGFloat)llf_width
{
    return self.frame.size.width;
}

- (void)setLlf_size:(CGSize)llf_size
{
    CGRect frame = self.frame;
    frame.size = llf_size;
    self.frame = frame;
}

- (CGSize)llf_size
{
    return self.frame.size;
}

- (void)setLlf_origin:(CGPoint)llf_origin
{
    CGRect frame = self.frame;
    frame.origin = llf_origin;
    self.frame = frame;
}

- (CGPoint)llf_origin
{
    return self.frame.origin;
}


- (instancetype)llf_cornerAllCornersWithCornerRadius:(CGFloat)cornerRadius {
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    shapeLayer.path = path.CGPath;
    self.layer.mask = shapeLayer;
    return self;
}

@end
