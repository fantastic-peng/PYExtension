//
//  NSString+UserDefault.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (UserDefault)

/**
 *  快速NSDefaults保存
 */
-(void)lg_saveToNSDefaultsWithKey:(NSString *)key;

@end
