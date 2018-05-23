//
//  NSString+DateFormat.m
//  CorotataLibuary
//
//  Created by Corotata on 15/5/5.
//  Copyright (c) 2015年 Corotata. All rights reserved.
//

#import "NSString+DateFormat.h"

@implementation NSString (DateFormat)

static NSDateFormatter *_dateFormatter;
+ (void)load
{
    _dateFormatter = [[NSDateFormatter alloc] init];
}



-(NSDate *)lg_currentTime{
    [_dateFormatter setDateFormat: @"yyyy-MM-dd HH:mm:ss"];
    return [_dateFormatter dateFromString:self];
}


-(NSDate *)lg_standardizedTime{
    [_dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [_dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"]];
    [_dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
    [_dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT"]];
    return [_dateFormatter dateFromString:self];
}



@end
