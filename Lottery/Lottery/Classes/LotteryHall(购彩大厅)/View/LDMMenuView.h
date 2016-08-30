//
//  LDMMenuView.h
//  Lottery
//
//  Created by 李景浩 on 16/8/29.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import <UIKit/UIKit.h>

//用代理实现hidden
@class LDMMenuView;
@protocol LDMMenuViewDeleagte <NSObject>

@optional

-(void)HiddenCoverMenuClick:(LDMMenuView *)menuView;

@end

@interface LDMMenuView : UIView

@property (weak,nonatomic) id<LDMMenuViewDeleagte> delegate;

//显示在某个位置
+(instancetype)showInPoint:(CGPoint)point;

//隐藏在某个位置
-(void)hiddenInPoint:(CGPoint)point completion:(void (^ __nullable)())completion;

@end
