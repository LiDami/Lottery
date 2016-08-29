//
//  LDMMenuView.m
//  Lottery
//
//  Created by 李景浩 on 16/8/29.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMMenuView.h"
#import "LDMCoverView.h"

@implementation LDMMenuView


+(instancetype)showInPoint:(CGPoint)point{
    
    LDMMenuView *menu = [[NSBundle mainBundle]loadNibNamed:@"LDMMenuView" owner:nil options:nil].lastObject;
    menu.center = point;
    
    [[UIApplication sharedApplication].keyWindow addSubview:menu];
    return menu;
}

/**
 *  这里提供一个代理，让谁调用谁去做hidden操作，还有cove中的hidden
 */
- (IBAction)closeBtnClick:(UIButton *)sender {
    
    if ([_delegate respondsToSelector:@selector(HiddenCoverMenuClick:)]) {
        [self.delegate HiddenCoverMenuClick:self];
    }
    
}
/**
 *  menu的hidden
 *
 *  @param point 隐藏的传入的点
 */
-(void)hiddenInPoint:(CGPoint)point{

    [UIView animateWithDuration:1 animations:^{
//        平移+缩放
//        这里用对象，不用类方法，因为拿不到center等其他属性
        self.center = point;
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
        
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
    }];
}

@end
