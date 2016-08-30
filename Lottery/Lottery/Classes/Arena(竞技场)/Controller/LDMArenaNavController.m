//
//  LDMArenaNavController.m
//  Lottery
//
//  Created by 李景浩 on 16/8/30.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "LDMArenaNavController.h"

@interface LDMArenaNavController ()

@end

@implementation LDMArenaNavController


+(void)load{

    
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    UIImage *image = [UIImage imageNamed:@"NLArenaNavBar64"];
//    拉伸图片..。。。注意方法有没有返回值先
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    
    [bar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
