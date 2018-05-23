//
//  NSString+FilePath.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FilePath)

+ (NSString *)lg_getFilePathForDirectoriesInDomains:(NSSearchPathDirectory) pathDirectory folderName:(NSString *)folder;


@end
