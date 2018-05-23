//
//  NSString+JSON.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JSON)

/** 将字符串的json转成array或者dictionary */
-(id)lg_JSONValue;


@end
