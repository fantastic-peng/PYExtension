//
//  NSString+PinYin.h
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (PinYin)

/**
 *  取字符串的拼音首个大写字母，不是字母的以#返回
 */
- (NSString *)lg_capitalizationInitialLetter;

/**
 *  将汉字转化为拼音
 */
- (NSString *)lg_getPinYinFromHans:(NSString *)hans;

@end
