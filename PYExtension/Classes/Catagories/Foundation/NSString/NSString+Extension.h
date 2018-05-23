//
//  NSString+Extension.h
//  LGExtensions
//
//  Created by Corotata on 2017/8/31.
//  Copyright © 2017年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

/**
 *  驼峰转下划线（loveYou -> love_you）
 */
- (NSString *)lg_underlineFromCamel;
/**
 *  下划线转驼峰（love_you -> loveYou）
 */
- (NSString *)lg_camelFromUnderline;
/**
 * 首字母变大写
 */
- (NSString *)lg_firstCharUpper;
/**
 * 首字母变小写
 */
- (NSString *)lg_firstCharLower;

- (BOOL)lg_isPureInt;

- (NSURL *)lg_url;

//去除空格
+ (NSString *)lg_filterBlankWithString:(NSString *)originString;

@end
