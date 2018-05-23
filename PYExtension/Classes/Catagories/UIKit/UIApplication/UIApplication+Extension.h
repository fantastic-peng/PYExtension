//
//  UIApplication+Extension.h
//  LGExtensions
//
//  Created by Corotata on 2017/8/22.
//  Copyright © 2017年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Extension)

//应用版本号，如 1.0.0
+ (NSString *)lg_applicationShortVersionString ;

//应用Build编号，如 1
+ (NSString *)lg_applicationBundleVersion ;

//应用完整版本号，如 1.0.0（1）
+ (NSString *)lg_applicationCompleteVersionString ;

@end
