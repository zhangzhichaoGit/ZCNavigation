//
//  UINavigationBar+ZCNavigationBar.m
//  ZCNavigation
//
//  Created by 张智超MAC on 2017/12/26.
//  Copyright © 2017年 张智超MAC. All rights reserved.
//

#import "UINavigationBar+ZCNavigationBar.h"

@implementation UINavigationBar (ZCNavigationBar)
- (void)setNavsetBackgroundColor:(UIColor *)color alpha:(CGFloat)alpha
{
    [self setBackgroundImage:[self createImageWithColor:color] forBarMetrics:UIBarMetricsDefault];
//    if (alpha >=1.0) {
//        [self setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
//    }
}
- (void)reductionNavSet
{
    [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}
- (UIImage*)createImageWithColor:(UIColor*)color{
    CGRect rect=CGRectMake(0.0f,0.0f,1.0f,1.0f);UIGraphicsBeginImageContext(rect.size);
    CGContextRef context=UIGraphicsGetCurrentContext();CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage=UIGraphicsGetImageFromCurrentImageContext();UIGraphicsEndImageContext();
    return theImage;
}
@end
