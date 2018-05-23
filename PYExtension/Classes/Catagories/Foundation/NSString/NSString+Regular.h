//
//  NSString+Regular.h
//  LGExtensions
//
//  Created by Corotata on 2017/8/31.
//  Copyright © 2017年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Regular)

/**
 正则筛选
 @param regular 传入正则表达式
 @return 返回筛选结果
 */
- (NSString *)lg_filterByRegularExpressions:(NSString *)regular;



//邮箱正则
+ (BOOL)lg_isEmailAdress:(NSString *)Email;


@end
