//
//  LogisticsModel.h
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LogisticsModel : NSObject

/// 时间
@property (nonatomic, copy) NSString *time;
/// 物流
@property (nonatomic, copy) NSString *content;
/// 模型下标
@property (nonatomic, assign) NSInteger indexCount;
/// 模型总数量
@property (nonatomic, assign) NSInteger totalCount;

@end

