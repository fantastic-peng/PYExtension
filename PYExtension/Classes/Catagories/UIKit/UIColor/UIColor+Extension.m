//
//  UIColor+CoroExtension.m
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+(UIColor *)lg_colorWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue{
    return [UIColor colorWithRed:(red)/255.0 green:(green)/255.0 blue:(blue)/255.0 alpha:1.0];
}

+ (UIColor*)lg_colorWithHexValue:(NSInteger)hexValue{
    return [self lg_colorWithHexValue:hexValue alpha:1.0];
}

+ (UIColor*)lg_colorWithHexValue:(NSInteger)hexValue alpha:(CGFloat)aAlpha{
    return [UIColor colorWithRed:((CGFloat)((hexValue&0xFF0000)>>16))/255.0
                           green:((CGFloat)((hexValue&0xFF00)>>8))/255.0
                            blue:((CGFloat)(hexValue&0xFF))/255.0
                           alpha:aAlpha];
}

- (UIImage*)lg_colorTransforToImage
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [self CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}



@end
