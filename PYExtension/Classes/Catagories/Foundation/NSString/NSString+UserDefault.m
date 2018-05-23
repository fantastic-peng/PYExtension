//
//  NSString+UserDefault.m
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "NSString+UserDefault.h"

@implementation NSString (UserDefault)

-(void)lg_saveToNSDefaultsWithKey:(NSString *)key{
    [[NSUserDefaults standardUserDefaults]setObject:self forKey:key];
    [[NSUserDefaults standardUserDefaults]synchronize];
}


@end
