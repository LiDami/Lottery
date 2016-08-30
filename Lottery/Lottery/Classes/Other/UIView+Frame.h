//
//  UIView+Frame.h
//  Lottery
//
//  Created by 李景浩 on 16/8/30.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

//这里为了拓展，需要设置width的get和set，所以，@property在分类中，是实现的getset方法
//在分类中不允许设置@property属性，可以设为getset方法。所以在这里能用@property

@property(nonatomic,assign)CGFloat width;
@property(nonatomic,assign)CGFloat height;
@property(nonatomic,assign)CGFloat x;
@property(nonatomic,assign)CGFloat y;

@end
