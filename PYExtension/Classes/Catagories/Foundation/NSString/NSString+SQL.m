//
//  NSString+SQL.m
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "NSString+SQL.h"

@implementation NSString (SQL)

- (NSString *)lg_safeSQLStringValue {
    return [NSString stringWithFormat:@"'%@'",self];
}

@end
