//
//  NSString+PinYin.m
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "NSString+PinYin.h"

@implementation NSString (PinYin)

/**
 *  取字符串的拼音首个大写字母，不是字母的以#返回
 */
- (NSString *)lg_capitalizationInitialLetter{
    NSMutableString *temp = [[NSMutableString alloc] initWithString:self];
    CFStringTransform((__bridge CFMutableStringRef)temp, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)temp, NULL, kCFStringTransformStripDiacritics, NO);
    NSString *str = @"";
    if ([temp length] > 0) {
        str = [[temp uppercaseString] substringToIndex:1];
    }
    
//    const char *cp = [str UTF8String];
//    str = (cp[0] >= 'A' && cp[0] <='Z') ? str :@"#";
    return str;
    
    
}

- (NSString *)lg_getPinYinFromHans:(NSString *)hans{
    
    NSMutableString *ms = [[NSMutableString alloc] initWithString:hans];
    if (CFStringTransform((__bridge CFMutableStringRef)ms, 0, kCFStringTransformMandarinLatin, NO))
    {
        return ms;
    }
    if (CFStringTransform((__bridge CFMutableStringRef)ms, 0, kCFStringTransformStripDiacritics, NO))
    {
        return [[ms uppercaseString] substringToIndex:1];
    }
    return hans;
}
//判断是否为汉字
- (BOOL)isChinesecharacter:(NSString *)string{
    if (string.length == 0) {
        return NO;
    }
    unichar c = [string characterAtIndex:0];
    if (c >=0x4E00 && c <=0x9FA5)     {
        return YES;//汉字
    }     else     {
        return NO;//英文
    }
}

@end
