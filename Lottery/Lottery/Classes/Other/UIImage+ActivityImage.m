//
//  UIImage+ActivityImage.m
//  Lottery
//
//  Created by 李景浩 on 16/8/28.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "UIImage+ActivityImage.h"

@implementation UIImage (ActivityImage)


+(instancetype)imageWithOriginalImage:(NSString *)imageName{

    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
