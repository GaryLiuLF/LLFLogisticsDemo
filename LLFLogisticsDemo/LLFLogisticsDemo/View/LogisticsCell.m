//
//  LogisticsCell.m
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/16.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import "LogisticsCell.h"
#import "GlobalHeader.h"
#import "NSMutableAttributedString+LLFExtension.h"
#import "YYText.h"

@interface LogisticsCell ()

/// 左边的圆
@property (nonatomic, weak) UIView *leftRoundView;
/// 左边的线
@property (nonatomic, weak) UIView *leftLineView;
/// 内容
@property (nonatomic, weak) YYLabel *contentLabel;
/// 时间
@property (nonatomic, weak) UILabel *timeLabel;
/// 底部线
@property (nonatomic, weak) UIView *bottomLine;

@end

static NSString *const reuseId = @"LogisticsCell";

@implementation LogisticsCell

+ (instancetype)llf_cellWithTableView:(UITableView *)tableView {
    LogisticsCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (cell == nil) {
        cell = [[LogisticsCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseId];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    UIView *leftLineView = [[UIView alloc]init];
    leftLineView.backgroundColor = LLFColor(0xdfdfdf);
    [self.contentView addSubview:leftLineView];
    self.leftLineView = leftLineView;
    
    YYLabel *contentLabel = [[YYLabel alloc]init];
    contentLabel.font = LLFGlobelNormalFont(14);
    contentLabel.numberOfLines = 0;
    [self.contentView addSubview:contentLabel];
    self.contentLabel = contentLabel;
    
    UILabel *timeLabel = [[UILabel alloc]init];
    timeLabel.font = LLFGlobelNormalFont(11);
    [self.contentView addSubview:timeLabel];
    self.timeLabel = timeLabel;
    
    UIView *leftRoundView = [[UIView alloc]init];
    leftRoundView.backgroundColor = LLFColor(0xdfdfdf);
    [self.contentView addSubview:leftRoundView];
    self.leftRoundView = leftRoundView;
    
    UIView *bottomLine = [[UIView alloc]init];
    bottomLine.backgroundColor = LLFColor(0xdfdfdf);
    [self.contentView addSubview:bottomLine];
    self.bottomLine = bottomLine;
}

- (void)setFrameModel:(LogisticsFrameModel *)frameModel {
    _frameModel = frameModel;
    
    [self setData];
}

- (void)setData {
    self.timeLabel.text = _frameModel.timeString;
    
    self.contentLabel.textColor = _frameModel.contentColor;
    self.timeLabel.textColor = _frameModel.timeColor;
    self.leftRoundView.backgroundColor = _frameModel.leftRoundColor;
    
    self.contentLabel.attributedText = _frameModel.contentAttributedString;
}
    
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.leftRoundView.frame = _frameModel.leftRoundViewF;
    [self.leftRoundView llf_cornerAllCornersWithCornerRadius:self.leftRoundView.height * 0.5];
    
    self.leftLineView.frame = _frameModel.leftLineViewF;
    
    self.contentLabel.frame = _frameModel.contentLabelF;
    
    self.timeLabel.frame = _frameModel.timeLabelF;
    
    self.bottomLine.frame = _frameModel.bottomLineF;
}

@end
