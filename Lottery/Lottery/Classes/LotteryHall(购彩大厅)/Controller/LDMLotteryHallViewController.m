//
//  LDMLotteryHallViewController.m
//  Lottery
//
//  Created by 李景浩 on 16/8/27.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMLotteryHallViewController.h"
#import "UIImage+ActivityImage.h"

@interface LDMLotteryHallViewController ()

@end

@implementation LDMLotteryHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIImage *image = [UIImage imageNamed:@"CS50_activity_image"];
//    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithImage:image style:0 target:self action:@selector(activity)];
    
//    这里使用UIImage的category实现imageWithOriginalImage
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithOriginalImage:@"CS50_activity_image"] style:0 target:self action:@selector(activity)];
    self.navigationItem.leftBarButtonItem = btn;
    

}

-(void)activity{

    
}


@end
