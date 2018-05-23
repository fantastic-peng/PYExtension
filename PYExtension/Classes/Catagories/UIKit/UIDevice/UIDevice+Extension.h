//
//  UIDevice+Extension.h
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Extension)

//如IPad/IPhone
- (NSString *)lg_machineModel;

//如IPad 4
- (NSString *)lg_machineModelName;

//判断是否是越狱设备
- (BOOL)lg_isJailBreakMachine;

@end
