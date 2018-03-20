//
//  LogisticsFrameModel.h
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LogisticsModel.h"

@interface LogisticsFrameModel : NSObject

/// 左边的圆
@property (nonatomic, assign, readonly) CGRect leftRoundViewF;
/// 左边的线
@property (nonatomic, assign, readonly) CGRect leftLineViewF;
/// 内容
@property (nonatomic, assign, readonly) CGRect contentLabelF;
/// 时间
@property (nonatomic, assign, readonly) CGRect timeLabelF;
/// 底部线
@property (nonatomic, assign, readonly) CGRect bottomLineF;
/// 物流文本
@property (nonatomic, copy, readonly) NSString *contentString;
/// 时间文本
@property (nonatomic, copy, readonly) NSString *timeString;
/// 内容富文本
@property (nonatomic, strong, readonly) NSMutableAttributedString *contentAttributedString;
/// 物流文本颜色
@property (nonatomic, strong, readonly) UIColor *contentColor;
/// 时间文本颜色
@property (nonatomic, strong, readonly) UIColor *timeColor;
/// 左边圆圈颜色
@property (nonatomic, strong, readonly) UIColor *leftRoundColor;
/// cell高度
@property (nonatomic, assign, readonly) CGFloat cellHeight;
/// 模型
@property (nonatomic, strong) LogisticsModel *model;


@end

