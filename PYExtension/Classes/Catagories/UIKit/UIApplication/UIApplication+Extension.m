//
//  UIApplication+Extension.m
//  LGExtensions
//
//  Created by Corotata on 2017/8/22.
//  Copyright © 2017年 Ligo Technology. All rights reserved.
//

#import "UIApplication+Extension.h"

@implementation UIApplication (Extension)

+ (NSString *)lg_applicationShortVersionString {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+ (NSString *)lg_applicationBundleVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

+ (NSString *)lg_applicationCompleteVersionString {
    return [NSString stringWithFormat:@"%@(%@)",[[self class]lg_applicationShortVersionString],[[self class]lg_applicationBundleVersion]];
}


@end
