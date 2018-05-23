//
//  UIBarButtonItem+Extension.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (UIBarButtonItem *)lg_itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action;

+ (UIBarButtonItem *)lg_itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;
+ (UIBarButtonItem *)backButtonItemWithTarget:(id)target action:(SEL)action;
@end
