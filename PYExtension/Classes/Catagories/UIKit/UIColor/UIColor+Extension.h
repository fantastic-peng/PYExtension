//
//  UIColor+CoroExtension.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)
/**
 *  通过给定红、蓝、绿颜色进行配色
 */
+(UIColor *)lg_colorWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

/**
 *  把给定的十六进制颜色值进行转化
 */
+ (UIColor*)lg_colorWithHexValue:(NSInteger)hexValue;

+ (UIColor*)lg_colorWithHexValue:(NSInteger)hexValue alpha:(CGFloat)aAlpha;


/**
 *  由颜色转图片
 */
- (UIImage*)lg_colorTransforToImage;


@end
