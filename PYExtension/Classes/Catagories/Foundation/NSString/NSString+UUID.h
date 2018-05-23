//
//  NSString+UUID.h
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (UUID)

/**
 *  生成UUID
 */
+ (NSString *)lg_generateUUID;
- (NSString *)lg_generateUUID;


@end
