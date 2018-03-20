//
//  LogisticsCell.h
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/16.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LogisticsFrameModel.h"

@interface LogisticsCell : UITableViewCell

@property (nonatomic, strong) LogisticsFrameModel *frameModel;

+ (instancetype)llf_cellWithTableView:(UITableView *)tableView;

@end
