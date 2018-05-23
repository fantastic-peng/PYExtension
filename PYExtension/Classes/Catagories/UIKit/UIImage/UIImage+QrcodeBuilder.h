//
//  UIImage+QrcodeBuilder.h
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QrcodeBuilder)

+ (UIImage *)lg_createQRCodeWithText:(NSString *)text size:(CGFloat)size;

+ (UIImage *)lg_createQRCodeWithText:(NSString *)text size:(CGFloat)size centerImage:(UIImage *)centerImage centerImageSize:(CGFloat)centerImgSize;

+ (UIImage *)lg_createQRCodeWithText:(NSString *)text size:(CGFloat)size AndTransformColorWithRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;

+ (UIImage *)lg_createQRCodeWithText:(NSString *)text size:(CGFloat)size centerImage:(UIImage *)centerImage AndTransformColorWithRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;


@end
