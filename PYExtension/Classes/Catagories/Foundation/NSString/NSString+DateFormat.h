//
//  NSString+DateFormat.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DateFormat)

/**
 *  对当前时间进行格式化，只针对没有进行格式化的时间进行处理
 *
 *
 *  @return <#return value description#>
 */
-(NSDate *)lg_currentTime;

/**
 *  将时间采取en_US_POSIX进行标准化,注意由en_US_POSIX格式化的应该由该方法进行
 *
 *
 *  @return <#return value description#>
 */
-(NSDate *)lg_standardizedTime;






@end
