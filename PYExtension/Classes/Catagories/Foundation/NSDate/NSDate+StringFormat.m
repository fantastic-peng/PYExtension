//
//  NSDate+StringFormat.m
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "NSDate+StringFormat.h"

@implementation NSDate (StringFormat)


static NSDateFormatter *_dateFormatter;
+ (void)load
{
    _dateFormatter = [[NSDateFormatter alloc] init];
}



-(NSString *)lg_currentTime{
    [_dateFormatter setDateFormat: @"yyyy-MM-dd HH:mm:ss"];
    return [_dateFormatter stringFromDate:self];
}

- (NSString *)lg_currentDay{
    [_dateFormatter setDateFormat: @"yyyy.MM.dd"];
    return [_dateFormatter stringFromDate:self];
}


-(NSString *)lg_standardizedTime{
    [_dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [_dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"]];
    [_dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
    [_dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT"]];
    return [_dateFormatter stringFromDate:self];
}



@end
