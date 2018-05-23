//
//  NSString+StringAppend.m
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "NSString+StringAppend.h"

@implementation NSString (StringAppend)

-(NSString *)lg_appendFileName:(NSString *)append{
    // 1.获取没有拓展名的文件名
    NSString *filename = [self stringByDeletingPathExtension];
    
    // 2.拼接append
    filename = [filename stringByAppendingString:append];
    
    // 3.拼接拓展名
    NSString *extension = [self pathExtension];
    // 4.生成新的文件名
    return [filename stringByAppendingPathExtension:extension];
}



@end
