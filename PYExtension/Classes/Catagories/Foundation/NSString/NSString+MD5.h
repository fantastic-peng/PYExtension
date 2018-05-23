//
//  NSString+MD5.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5)

/** 对字符串进行MD5转化,主要是为了为一些文件生成唯一标识 */
-(NSString*) lg_MD5;

- (NSString *) lg_MD5Hash;

@end
