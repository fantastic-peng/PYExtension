//
//  UIImage+Extension.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)


#pragma mark - 对图片进行尺寸处理
/**
 *  对传入的UIImage进行拉伸，默认是以width的0.5，及height的0.5进行拉伸
 */
+ (UIImage *)lg_stretchImageWithName:(NSString *)imageName;

/**
 *  将图片拉伸为你想要的尺寸
 */
- (UIImage *)lg_scaleToSize:(CGSize)newSize;


/**
 *  将图片按一定尺寸进行等比压缩(比如尺寸为960*720，那么传入的图片大于这尺寸，则会采取压缩，否则则返回原图)
 */
- (UIImage *)lg_compressImageWithSize:(CGSize)size;

#pragma mark - 对图片进行颜色处理

/**
 *  将图片灰度化
 */
+ (UIImage *)lg_changeGrayImage:(UIImage*)sourceImage;

#pragma mark - 图片较正
/**
 *  返回较正方向的后图片
 */
- (UIImage *)lg_normalizedImage;

#pragma mark - 图片变形
/**
 *  返回圆角矩形的图片，默认半径为图片宽度的1/6
 */
- (UIImage *)lg_rectImage;

/**
 *  返回圆角图片，默认为图片宽度的1/2
 */
- (UIImage *)lg_roundImage;

/**
 *  指定圆角的半径，返回相应圆角图片
 */
- (UIImage *)lg_roundImageByCircleRadius:(NSInteger)radius;
- (UIImage *)lg_roundImageByCircleRadius:(NSInteger)radius size:(CGSize)size;
+ (UIImage *)lg_roundImageByCircleRadius:(NSInteger)radius image:(UIImage*)image size:(CGSize)size;


#pragma mark - 改变图片的透明度
/**
 *  改变图片的透明度
 */
- (UIImage *)lg_transformImageByAlpha:(CGFloat)alpha;

+ (UIImage *)lg_imageWithColor:(UIColor *)color;



@end
