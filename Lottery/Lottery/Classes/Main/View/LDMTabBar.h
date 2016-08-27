//
//  LDMTabBar.h
//  Lottery
//
//  Created by 李景浩 on 16/8/27.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LDMTabBar;
@protocol LDMTabBarDelegate <NSObject>

@optional
-(void)tabBar:(LDMTabBar *)tabBar withSelectBtn:(NSInteger)index;

@end


@interface LDMTabBar : UIView

@property (weak,nonatomic) id<LDMTabBarDelegate> delegate;

@property (strong,nonatomic) NSArray *items;

@end
