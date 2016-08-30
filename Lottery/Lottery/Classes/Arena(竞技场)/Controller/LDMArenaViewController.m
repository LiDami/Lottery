//
//  LDMArenaViewController.m
//  Lottery
//
//  Created by 李景浩 on 16/8/27.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMArenaViewController.h"

@interface LDMArenaViewController ()

@end

@implementation LDMArenaViewController

//创建自己的控制器
-(void)loadView{

    UIImageView *imageView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    imageView.image = [UIImage imageNamed:@"NLArenaBackground"];
//    能进行交互
    imageView.userInteractionEnabled = YES;
    
    self.view = imageView;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self segment];
}

-(void)segment{

    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:@[@"足球",@"篮球"]];
//    默认选择显示第一个
    segment.selectedSegmentIndex = 0;
//    设置背景图片
    [segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
//    设置字体颜色
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor colorWithRed:13/256.0 green:255/256.0 blue:0/256.0 alpha:1];
    [segment setTitleTextAttributes:dict forState:UIControlStateNormal];
    
    NSMutableDictionary *dictSel = [NSMutableDictionary dictionary];
    dictSel[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [segment setTitleTextAttributes:dictSel forState:UIControlStateSelected];
//    设置分隔线的颜色
    segment.tintColor = [UIColor colorWithRed:13/256.0 green:255/256.0 blue:0/256.0 alpha:1];
    
    self.navigationItem.titleView = segment;
    
    
}



@end
