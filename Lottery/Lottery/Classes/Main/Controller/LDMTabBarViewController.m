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
#import "LDMTabBar.h"
#import "LDMNavigationController.h"
#import "LDMArenaNavController.h"

@interface LDMTabBarViewController ()<LDMTabBarDelegate>

@property(nonatomic,strong)NSMutableArray *items;

@end

@implementation LDMTabBarViewController

// UITabBarButton上面的图片尺寸是有规格,不能太大,如果太大,就显示不出来.
// 系统的UITabBarButton不能显示我们美工提供的图片,系统的UITabBarButton不能完成我们需求,UITabBarButton不好使.
// 自定义按钮,显示在UITabBar
// 需不需要系统自带的UITabBarButton,把系统自带的UITabBarButton移除
// 直接把系统的UITabBar移除
// 自定义UITabBar,添加到tabBarVc上

/**
 *  懒加载items
 */
-(NSMutableArray *)items{

    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}

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
    
//    添加自定义的tabBar用UIView去实现
    LDMTabBar *tabBar = [[LDMTabBar alloc]initWithFrame:self.tabBar.frame];
    tabBar.backgroundColor = [UIColor greenColor];
    tabBar.delegate = self;
    
//    把存储在数组中的items传给自定义的tabBar中，用于显示和设置
    tabBar.items = self.items;
    [self.view addSubview:tabBar];
    
}
#pragma mark - 实现自定义tabBar中用于点击tab显示对应的控制器的代理
-(void)tabBar:(LDMTabBar *)tabBar withSelectBtn:(NSInteger)index{

    self.selectedIndex = index;
}


#pragma mark - 设置所有的子控制器
-(void)setAllViewController{
    
//    购彩大厅
    LDMLotteryHallViewController * hall = [[LDMLotteryHallViewController alloc]init];
    [self setOneChildViewController:hall andImage:[UIImage imageNamed:@"TabBar_LotteryHall_new"] andSelIamge:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"] andTitle:@"购彩大厅"];
    
//    竞技场
    LDMArenaViewController *arena = [[LDMArenaViewController alloc]init];
    [self setOneChildViewController:arena andImage:[UIImage imageNamed:@"TabBar_Arena_new"] andSelIamge:[UIImage imageNamed:@"TabBar_Arena_selected_new"] andTitle:@"竞技场"];
    
//    发现
    LDMDiscoveryViewController *dis = [[LDMDiscoveryViewController alloc]init];
    [self setOneChildViewController:dis andImage:[UIImage imageNamed:@"TabBar_Discovery_new"] andSelIamge:[UIImage imageNamed:@"TabBar_Discovery_selected_new"] andTitle:@"发现"];
    
//    开奖信息
    LDMHistoryViewController *his = [[LDMHistoryViewController alloc]init];
    [self setOneChildViewController:his andImage:[UIImage imageNamed:@"TabBar_History_new"] andSelIamge:[UIImage imageNamed:@"TabBar_History_selected_new"] andTitle:@"开奖信息"];
    
    
//    我的彩票
    LDMMyLotteryViewController * myLott = [[LDMMyLotteryViewController alloc]init];
    [self setOneChildViewController:myLott andImage:[UIImage imageNamed:@"TabBar_MyLottery_new"] andSelIamge:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] andTitle:@"我的彩票"];
    
    
}

/**
 *  添加单个的控制器
 *
 *  @param vc       子控制器
 *  @param image    显示的图片
 *  @param selImage 高亮的图片
 */
-(void)setOneChildViewController:(UIViewController *)vc andImage:(UIImage *)image andSelIamge:(UIImage *)selImage andTitle:(NSString *)title{

//    设置导航bar的title
    vc.navigationItem.title = title;
//    这里用多态
    UINavigationController *nc = [[LDMNavigationController alloc]initWithRootViewController:vc];
    
//    竞技场的navigationBar是自定义的颜色
    if ([vc isKindOfClass:[LDMArenaViewController class]]) {
        nc = [[LDMArenaNavController alloc]initWithRootViewController:vc];
    }
    
    
    nc.tabBarItem.image = image;
    nc.tabBarItem.selectedImage = selImage;
    
//    用数组存储每一次调用的tabBarItem,用于自定义TabBar中显示,注意要先进行懒加载，判断是否为空
    [self.items addObject:nc.tabBarItem];
    
    [self addChildViewController:nc];
}


@end
