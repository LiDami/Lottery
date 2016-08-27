//
//  LDMTabBarViewController.m
//  Lottery
//
//  Created by 李景浩 on 16/8/27.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMTabBarViewController.h"
#import "LDMArenaViewController.h"
#import "LDMDiscoveryViewController.h"
#import "LDMHistoryViewController.h"
#import "LDMLotteryHallViewController.h"
#import "LDMMyLotteryViewController.h"

@interface LDMTabBarViewController ()

@end

@implementation LDMTabBarViewController

// UITabBarButton上面的图片尺寸是有规格,不能太大,如果太大,就显示不出来.
// 系统的UITabBarButton不能显示我们美工提供的图片,系统的UITabBarButton不能完成我们需求,UITabBarButton不好使.
// 自定义按钮,显示在UITabBar
// 需不需要系统自带的UITabBarButton,把系统自带的UITabBarButton移除
// 直接把系统的UITabBar移除
// 自定义UITabBar,添加到tabBarVc上

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setAllViewController];
    
//    移除系统的tabBar
    [self setUpTabBar];
}

#pragma mark - 移除系统的TabBar,用自定义的
-(void)setUpTabBar{

//    移除
    [self.tabBar removeFromSuperview];
//    添加自定义的tabBar
    
    
}


#pragma mark - 设置所有的子控制器
-(void)setAllViewController{
    
//    竞技场
    LDMArenaViewController *arena = [[LDMArenaViewController alloc]init];
    [self setOneChildViewController:arena andImage:[UIImage imageNamed:@"TabBar_Arena_new"] andSelIamge:[UIImage imageNamed:@"TabBar_Arena_selected_new"]];
    
//    发现
    LDMDiscoveryViewController *dis = [[LDMDiscoveryViewController alloc]init];
    [self setOneChildViewController:dis andImage:[UIImage imageNamed:@"TabBar_Discovery_new"] andSelIamge:[UIImage imageNamed:@"TabBar_Discovery_selected_new"]];
    
//    开奖信息
    LDMHistoryViewController *his = [[LDMHistoryViewController alloc]init];
    [self setOneChildViewController:his andImage:[UIImage imageNamed:@"TabBar_History_new"] andSelIamge:[UIImage imageNamed:@"TabBar_History_selected_new"]];
    
//    购彩大厅
    LDMLotteryHallViewController * hall = [[LDMLotteryHallViewController alloc]init];
    [self setOneChildViewController:hall andImage:[UIImage imageNamed:@"TabBar_LotteryHall_new"] andSelIamge:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"]];
    
//    我的彩票
    LDMMyLotteryViewController * myLott = [[LDMMyLotteryViewController alloc]init];
    [self setOneChildViewController:myLott andImage:[UIImage imageNamed:@"TabBar_MyLottery_new"] andSelIamge:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"]];
    
    
}

/**
 *  添加单个的控制器
 *
 *  @param vc       子控制器
 *  @param image    显示的图片
 *  @param selImage 高亮的图片
 */
-(void)setOneChildViewController:(UIViewController *)vc andImage:(UIImage *)image andSelIamge:(UIImage *)selImage{

    UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc];
    
    nc.tabBarItem.image = image;
    nc.tabBarItem.selectedImage = selImage;
    
    [self addChildViewController:nc];
}


@end
