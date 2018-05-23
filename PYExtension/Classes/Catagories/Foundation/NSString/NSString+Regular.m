//
//  NSString+Regular.m
//  LGExtensions
//
//  Created by Corotata on 2017/8/31.
//  Copyright © 2017年 Ligo Technology. All rights reserved.
//

#import "NSString+Regular.h"

@implementation NSString (Regular)

/**
 正则筛选
 @param regular 传入正则表达式
 @return 返回筛选结果
 */
- (NSString *)lg_filterByRegularExpressions:(NSString *)regular {
    NSRange range = [self rangeOfString:regular options:NSRegularExpressionSearch];
    if (range.location != NSNotFound) {
        return [self substringWithRange:range];
    }
    else {
        return nil;
    }
}


//邮箱正则
+ (BOOL)lg_isEmailAdress:(NSString *)Email {
    NSString *emailCheck = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailCheck];
    return [emailTest evaluateWithObject:Email];
}



@end
