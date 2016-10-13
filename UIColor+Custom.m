//
//  UIColor+Custom.m
//  ZesowEDU
//
//  Created by kevin on 2016/10/11.
//  Copyright © 2016年 kevin. All rights reserved.
//

#import "UIColor+Custom.h"

@implementation UIColor (Custom)

+ (UIColor *)colorWithRGBA:(UInt32)rgba
{
    CGFloat r = ((rgba & 0xFF000000) >> 24) / 255.0;
    CGFloat g = ((rgba & 0x00FF0000) >> 16) / 255.0;
    CGFloat b = ((rgba & 0x0000FF00) >> 8) / 255.0;
    CGFloat a = ((rgba & 0x000000FF) >> 0) / 255.0;
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}

+ (UIColor *)colorWithRGB:(UInt32)rgba
{
    CGFloat r = ((rgba & 0xFF0000) >> 16) / 255.0;
    CGFloat g = ((rgba & 0x00FF00) >> 8) / 255.0;
    CGFloat b = ((rgba & 0x0000FF) >> 0) / 255.0;
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

+ (UIColor *)colorWithRGB:(int)r g:(int)g b:(int)b
{
    CGFloat rr = r / 255.0;
    CGFloat gg = g / 255.0;
    CGFloat bb = b / 255.0;
    return [UIColor colorWithRed:rr green:gg blue:bb alpha:1.0];
}

@end

@implementation UIColor (ZS)


+ (UIColor *)colorWithNavigationBarBackground
{
    return  [UIColor colorWithRGB:38 g:153 b:252];
}


@end