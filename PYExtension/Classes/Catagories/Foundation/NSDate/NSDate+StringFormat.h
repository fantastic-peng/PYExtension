//
//  NSDate+StringFormat.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (StringFormat)

/**
 *  对当前时间进行格式化
 *  yyyy-MM-dd HH:mm:ss
 */
-(NSString *)lg_currentTime;

- (NSString *)lg_currentDay;

/**
 *  将时间采取en_US_POSIX进行标准化
 *  yyyy-MM-dd'T'HH:mm:ss
 */
-(NSString *)lg_standardizedTime;


@end
