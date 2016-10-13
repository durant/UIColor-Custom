//
//  UIColor+Custom.h
//  ZesowEDU
//
//  Created by kevin on 2016/10/11.
//  Copyright © 2016年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Custom)

+ (UIColor *)colorWithRGBA:(UInt32)rgba;

+ (UIColor *)colorWithRGB:(UInt32)rgba;

+ (UIColor *)colorWithRGB:(int)r g:(int)g b:(int)b;

@end
