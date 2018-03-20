//
//  LLFNormalHeader.m
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import "LLFNormalHeader.h"

@implementation LLFNormalHeader

- (void)prepare {
    [super prepare];
    
    self.lastUpdatedTimeLabel.hidden = YES;
    if (self.state == MJRefreshStateWillRefresh) {
        self.stateLabel.hidden = YES;
    }
}

@end
