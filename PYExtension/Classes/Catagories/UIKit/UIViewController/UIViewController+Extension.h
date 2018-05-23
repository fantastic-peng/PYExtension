//
//  UIViewController+Extension.h
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Extension)

- (UIViewController*)lg_topViewController;

- (UIViewController*)lg_topViewControllerWithRootViewController:(UIViewController*)rootViewController ;

@end
