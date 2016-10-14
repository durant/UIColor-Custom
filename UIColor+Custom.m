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

+ (UIColor *)colorWithRGBString:(NSString *)hexStr
{
    unsigned long rgb = [self stringConverToHex:hexStr];
    return [self colorWithRGB:rgb];
}

+ (UIColor *)colorWithRGBAString:(NSString *)hexStr
{
    unsigned long rgb = [self stringConverToHex:hexStr];
    return [self colorWithRGB:rgb];
}


+ (unsigned long)stringConverToHex:(NSString *)hexStr
{
    //strtoul如果传入的字符开头是“0x”,那么第三个参数是0，也是会转为十六进制的,这样写也可以：
//    unsigned long red = strtoul([@"0x6587" UTF8String],0,0);
    unsigned long hex = strtoul([rgbStr UTF8String],NULL,16);
    return hex;
}

@end
