//
//  NSString+UUID.m
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "NSString+UUID.h"

@implementation NSString (UUID)

+ (NSString *)lg_generateUUID
{
    NSString *result = nil;
    
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    if (uuid)
    {
        result = (__bridge_transfer NSString *)CFUUIDCreateString(NULL, uuid);
        CFRelease(uuid);
    }
    
    return result;
}

- (NSString *)lg_generateUUID
{
    return [[self class] lg_generateUUID];
}

@end
