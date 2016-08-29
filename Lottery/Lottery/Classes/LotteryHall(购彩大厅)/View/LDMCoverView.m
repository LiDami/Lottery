//
//  LDMCoverView.m
//  Lottery
//
//  Created by 李景浩 on 16/8/29.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMCoverView.h"

@implementation LDMCoverView


+(void)show{
//要用自己的类型去接去创建
    LDMCoverView *cover = [[LDMCoverView alloc]initWithFrame:[UIScreen mainScreen].bounds];
// 设置父控件的透明度会影响子控件
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.5;
//    添加到主窗口，就不能点击一切的控制器。 在开发中,只要把一个控件显示在最外边,就把他添加到主窗口上.
    [[UIApplication sharedApplication].keyWindow addSubview:cover];
}

+(void)hidden{

//    遍历主窗口，判断，就移除
    for (UIView *chlidView in [UIApplication sharedApplication].keyWindow.subviews) {
        if ([chlidView isKindOfClass:self]) {
            [chlidView removeFromSuperview];
        }
    }
}

@end
