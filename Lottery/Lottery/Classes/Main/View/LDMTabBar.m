//
//  LDMTabBar.m
//  Lottery
//
//  Created by 李景浩 on 16/8/27.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMTabBar.h"
#import "LDMTabBarButton.h"

@interface LDMTabBar()

@property(nonatomic,weak)UIButton *perBtn;

@end

@implementation LDMTabBar

/**
 *  重写items,用于显示
 */
-(void)setItems:(NSArray *)items{
    
    _items = items;
    int i = 0;
//注意，如果直接跳过了forin循环，说明items中没有值，这个项目的原因是没有对items进行懒加载。！！
    for (UITabBarItem *item in items) {
        LDMTabBarButton *btn = [LDMTabBarButton buttonWithType:UIButtonTypeCustom];
        btn.tag = i;
        
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
//        取消按钮按压时的样式
//        btn.adjustsImageWhenHighlighted = NO;
        
        i++;
        if (btn.tag == 0) {
//            第0个按钮
            [self btnClick:btn];
        }
        [self addSubview:btn];
        
    }
}
-(void)btnClick:(UIButton *)btn{

    self.perBtn.selected = NO;
    btn.selected = YES;
    self.perBtn = btn;
    
    if ([self.delegate respondsToSelector:@selector(tabBar:withSelectBtn:)]) {
        [self.delegate tabBar:self withSelectBtn:btn.tag];
    }
    
}

/**
 *  设置每一个的位置
 */
-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat count = self.items.count;
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = self.bounds.size.width / count;
    CGFloat h = self.bounds.size.height;
    
    for (int i = 0; i < count; i++) {
        UIButton *btn = self.subviews[i];
        
        x = w * i;
        
        btn.frame = CGRectMake(x, y, w, h);
    }

    
}





/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
