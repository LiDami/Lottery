//
//  UIView+Frame.m
//  Lottery
//
//  Created by 李景浩 on 16/8/30.
//  Copyright © 2016年 李大米. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

-(CGFloat)width{

    return self.bounds.size.width;
    
}
-(void)setWidth:(CGFloat)width{

    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
    
}
-(CGFloat)height{

    return self.bounds.size.height;
}
-(void)setHeight:(CGFloat)height{

    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    
}
-(CGFloat)x{

    return self.bounds.origin.x;
}
-(void)setX:(CGFloat)x{

    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
-(CGFloat)y{

    return self.bounds.origin.y;
}
-(void)setY:(CGFloat)y{

    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
@end
