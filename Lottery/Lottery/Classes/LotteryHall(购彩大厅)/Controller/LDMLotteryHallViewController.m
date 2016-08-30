//
//  LDMLotteryHallViewController.m
//  Lottery
//
//  Created by 李景浩 on 16/8/27.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMLotteryHallViewController.h"
#import "UIImage+ActivityImage.h"
#import "LDMCoverView.h"
#import "LDMMenuView.h"


@interface LDMLotteryHallViewController ()<LDMMenuViewDeleagte>

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
//    显示黑色的背景
    [LDMCoverView show];

//    显示菜单
    // bug:发现一个控件没有显示,1.有没有设置尺寸 2.看有没有控件挡住 3.有可能你都没有添加到某个控件
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
   LDMMenuView *menu = [LDMMenuView showInPoint:CGPointMake(screenSize.width * 0.5, screenSize.height * 0.5)];
//    事实现代理
    menu.delegate = self;
    
}

#pragma mark - 实现点击事件的代理
-(void)HiddenCoverMenuClick:(LDMMenuView *)menuView{

//    隐藏menu，这里用对象方法，因为对象能设置隐藏中的属性值
//    这里使用block，即menu完成后要做的事情，在hiddenInPoint定义的地方还需要调用block
    /*下面的代码相当于这样：
     
     void(^completion)(){
     
        [LDMCoverView hidden];
     }
     
     */
    
    [menuView hiddenInPoint:CGPointMake(44, 44) completion:^{
//   隐藏cover
        [LDMCoverView hidden];
    }];
    
    



}


@end
