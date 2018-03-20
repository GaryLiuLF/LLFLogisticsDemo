//
//  LogisticsFrameModel.m
//  LLFLogisticsDemo
//
//  Created by Gary-刘林飞 on 2018/3/15.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import "LogisticsFrameModel.h"
#import "GlobalHeader.h"
#import "NSString+LLFSizeExtension.h"
#import "YYText.h"

#define MARGIN_LEFT     LLF_ScaleWidth(45)
#define MARGIN_RIGHT    LLF_ScaleWidth(15)
#define MAX_WIDTH       (ScreenWidth - MARGIN_LEFT - MARGIN_RIGHT)

@implementation LogisticsFrameModel

- (void)setModel:(LogisticsModel *)model {
    _model = model;
    
    _contentString = model.content;
    _timeString = model.time;
    
    /// 判断颜色
    if (model.indexCount == 0) {
        _contentColor = LLFColor(0xff0000);
        _timeColor = LLFColor(0xff0000);
        _leftRoundColor = LLFColor(0xff0000);
    }
    else {
        _contentColor = LLFColor(0x999999);
        _timeColor = LLFColor(0x999999);
        _leftRoundColor = LLFColor(0x999999);
    }
    
    _contentAttributedString = [[NSMutableAttributedString alloc]initWithString:_contentString];
    _contentAttributedString.yy_font = LLFGlobelNormalFont(14);
    _contentAttributedString.yy_color = _contentColor;
    _contentAttributedString.yy_lineSpacing = 10;
    
    /// 匹配电话号码
    NSString *string = _contentString;
    NSError *error = nil;
    NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber error:&error];
    
    __block NSUInteger count = 0;
    __block NSString *phoneNumber;
    [detector enumerateMatchesInString:string options:0 range:NSMakeRange(0, [string length]) usingBlock:^(NSTextCheckingResult * _Nullable result, NSMatchingFlags flags, BOOL * _Nonnull stop) {
        if (count == 0) {
            *stop = YES;
        }
        if ([result resultType] == NSTextCheckingTypePhoneNumber) {
            phoneNumber = [result phoneNumber];
            NSLog(@"phoneNumber = %@",phoneNumber);
        }
    }];
    if (phoneNumber.length > 0) {
        [_contentAttributedString yy_setTextHighlightRange:[_contentString rangeOfString:phoneNumber]
                                                     color:[UIColor blueColor] backgroundColor:nil tapAction:^(UIView * _Nonnull containerView, NSAttributedString * _Nonnull text, NSRange range, CGRect rect) {
                                                         
                                                         NSLog(@"--- 拨打电话--%@",phoneNumber);
                                                         NSMutableString *str = [[NSMutableString alloc]initWithFormat:@"tel:%@",phoneNumber];
                                                         [[UIApplication sharedApplication]openURL:[NSURL URLWithString:str]];
                                                     }];
    }
    
    /// 计算控件frame
    CGSize maxSize = CGSizeMake(ScreenWidth - LLF_ScaleWidth(60), MAXFLOAT);
    CGSize contentLabelSize = [YYTextLayout layoutWithContainerSize:maxSize text:_contentAttributedString].textBoundingSize;
    
    CGFloat contentLabelX = MARGIN_LEFT;
    CGFloat contentLabelY = LLF_ScaleWidth(15);
    CGFloat contentLabelW = contentLabelSize.width;
    CGFloat contentLabelH = contentLabelSize.height;
    _contentLabelF = CGRectMake(contentLabelX, contentLabelY, contentLabelW, contentLabelH);
    
    CGSize timeLabelSize = [_timeString llf_sizeWithFont:LLFGlobelNormalFont(11) maxW:MAX_WIDTH];
    CGFloat timeLabelX = MARGIN_LEFT;
    CGFloat timeLabelY = CGRectGetMaxY(_contentLabelF) + LLF_ScaleWidth(10);
    CGFloat timeLabelW = timeLabelSize.width;
    CGFloat timeLabelH = timeLabelSize.height;
    _timeLabelF = CGRectMake(timeLabelX, timeLabelY, timeLabelW, timeLabelH);
    
    CGFloat leftRoundViewX = 0;
    CGFloat leftRoundViewY = 0;
    CGFloat leftRoundViewW = 0;
    CGFloat leftRoundViewH = 0;
    
    if (model.indexCount == 0) {
        leftRoundViewY = LLF_ScaleWidth(15);
        leftRoundViewW = LLF_ScaleWidth(15);
        leftRoundViewH = LLF_ScaleWidth(15);
    }
    else {
        leftRoundViewY = LLF_ScaleWidth(19);
        leftRoundViewW = LLF_ScaleWidth(7);
        leftRoundViewH = LLF_ScaleWidth(7);
    }
    leftRoundViewX = (MARGIN_LEFT - leftRoundViewW) * 0.5;
    
    _leftRoundViewF = CGRectMake(leftRoundViewX, leftRoundViewY, leftRoundViewW, leftRoundViewH);
    
    _cellHeight = CGRectGetMaxY(_timeLabelF) + LLF_ScaleWidth(15);
    
    if (model.indexCount == model.totalCount - 1) {
        _bottomLineF = CGRectZero;
    }
    else {
        CGFloat bottomLineX = MARGIN_LEFT;
        CGFloat bottomLineY = _cellHeight - 0.5;
        CGFloat bottomLineW = ScreenWidth - bottomLineX;
        CGFloat bottomLineH = 0.5;
        
        _bottomLineF = CGRectMake(bottomLineX, bottomLineY, bottomLineW, bottomLineH);
    }
    
    CGFloat leftLineViewW = 1;
    CGFloat leftLineViewX = (MARGIN_LEFT - leftLineViewW) * 0.5;
    CGFloat leftLineViewY = 0;
    CGFloat leftLineViewH = 0;
    
    if (model.indexCount == 0) { // 第一个
        leftLineViewY = CGRectGetMaxY(_leftRoundViewF);
        leftLineViewH = _cellHeight - leftLineViewY;
    }
    else if (model.indexCount == model.totalCount - 1) { // 最后一个
        leftLineViewY = 0;
        leftLineViewH = CGRectGetMinY(_leftRoundViewF);
    }
    else {
        leftLineViewY = 0;
        leftLineViewH = _cellHeight;
    }
    _leftLineViewF = CGRectMake(leftLineViewX, leftLineViewY, leftLineViewW, leftLineViewH);
}

@end

