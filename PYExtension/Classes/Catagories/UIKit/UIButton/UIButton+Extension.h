//
//  UIButton+Extension.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

#pragma mark - 提供快速设置普通状态、选中状态、以及高亮状态的文字颜色
/**
 *  提供快速设置普通状态、选中状态、以及高亮状态的文字颜色
 */
@property (strong, nonatomic) UIColor *lgTitleColor;
@property (strong, nonatomic) UIColor *lgHighlightedTitleColor;
@property (strong, nonatomic) UIColor *lgSelectedTitleColor;

#pragma mark - 提供快速设置普通状态、选中状态、以及高亮状态的文字内容
/**
 *  提供快速设置普通状态、选中状态、以及高亮状态的文字内容
 */
@property (copy, nonatomic) NSString *lgTitle;
@property (copy, nonatomic) NSString *lgHighlightedTitle;
@property (copy, nonatomic) NSString *lgSelectedTitle;

#pragma mark - 提供快速设置普通状态、选中状态、以及高亮状态的图片
/**
 *  提供快速设置普通状态、选中状态、以及高亮状态的图片
 */
@property (copy, nonatomic) NSString *lgImage;
@property (copy, nonatomic) NSString *lgHighlightedImage;
@property (copy, nonatomic) NSString *lgSelectedImage;

#pragma mark - 提供快速设置普通状态、选中状态、以及高亮状态的背景图片
/**
 *  提供快速设置普通状态、选中状态、以及高亮状态的背景图片
 */
@property (copy, nonatomic) NSString *lgBgImage;
@property (copy, nonatomic) NSString *lgHighlightedBgImage;
@property (copy, nonatomic) NSString *lgSelectedBgImage;

#pragma mark - 点击事件
/**
 *  点击事件
 */
- (void)lg_addTarget:(id)target action:(SEL)action;


/**
 *  设置普通、高亮、选中的背景图，
 *  默认拼接方式为：a@2x.png -> a_highlighted@2x.png -> a_select@2x.png
 *
 *  @param icon <#icon description#>
 *
 */
- (void)lg_setBackgroundStateImage:(NSString *)icon;


/**
 *  设置普通、高亮、选中时的图，
 *  默认拼接方式为：a@2x.png -> a_highlighted@2x.png -> a_select@2x.png
 *
 *  @param icon <#icon description#>
 *
 */
- (void)lg_setStateImage:(NSString *)icon;

@end
