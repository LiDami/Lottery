//
//  UIImage+ActivityImage.h
//  Lottery
//
//  Created by 李景浩 on 16/8/28.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ActivityImage)

//给一个原始的图片，生成一个原始的无渲染的图片
+(instancetype)imageWithOriginalImage:(NSString *)imageName;

@end
