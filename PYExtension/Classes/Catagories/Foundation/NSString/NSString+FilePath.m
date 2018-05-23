//
//  NSString+FilePath.m
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "NSString+FilePath.h"

@implementation NSString (FilePath)

+ (NSString *)lg_getFilePathForDirectoriesInDomains:(NSSearchPathDirectory) pathDirectory folderName:(NSString *)folder
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(pathDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? paths[0] : NSTemporaryDirectory();
    NSString *result = [basePath stringByAppendingPathComponent:folder];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:result])
    {
        [fileManager createDirectoryAtPath:result withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    return result;
}




@end
