//
//  LDMNavigationController.m
//  Lottery
//
//  Created by 李景浩 on 16/8/28.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMNavigationController.h"

@interface LDMNavigationController ()

@end

@implementation LDMNavigationController

//--------------------------------A---------------------------------------------
/*
//第一次使用这个类或者子类的时候调用
//不一定只调用一次，(使用子类的时候调用两次或多次)
+(void)initialize{

//    NSLog(@"%s",__func__);
    if (self == [LDMNavigationController class]) {
        UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[LDMNavigationController class], nil];
        
        //    设置navigationBar的背景图片
        [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
        //    设置字体颜色
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
        dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17];
        bar.titleTextAttributes = dict;
    }
    
}
*/
//--------------------------------B---------------------------------------------

//类加载的时候调用
//这个才只调用一次
+(void)load{
//    NSLog(@"%s",__func__);
    
//    这里获取不到self.navigationBar,所以可以用appearance
//    为了不霸道的设置全部的navigationBar，所以这里是谁调用此类就设置谁
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[LDMNavigationController class], nil];
    
//    设置navigationBar的背景图片
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
//    设置字体颜色
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17];
    bar.titleTextAttributes = dict;
    
}


//-----------------------------这个不仅以用，因为这个调用多次--------------------------------
- (void)viewDidLoad {
    [super viewDidLoad];
/*
//    设置navigationBar的背景图片
    // UIBarMetricsDefault:才能设置图片成功,其他的模式都设置不了
    // UIBarMetricsDefault效果: 使导航控制器的子控制器的view高度会减少64,会从导航条底部开始显示内容
    // UIBarMetricsCompact效果:导航条透明
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
//    设置字体颜色
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
//    设置粗黑体
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    self.navigationBar.titleTextAttributes = dict;
  */
}



@end
