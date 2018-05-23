//
//  UIViewController+Extension.m
//  LGExtensions
//
//  Created by Corotata on 16/8/11.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "UIViewController+Extension.h"

@implementation UIViewController (Extension)

- (UIViewController*)lg_topViewController {
    return [self lg_topViewControllerWithRootViewController:[UIApplication sharedApplication].keyWindow.rootViewController];
}

- (UIViewController*)lg_topViewControllerWithRootViewController:(UIViewController*)rootViewController {
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController* tabBarController = (UITabBarController*)rootViewController;
        return [self lg_topViewControllerWithRootViewController:tabBarController.selectedViewController];
    } else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController* navigationController = (UINavigationController*)rootViewController;
        return [self lg_topViewControllerWithRootViewController:navigationController.visibleViewController];
    } else if (rootViewController.presentedViewController) {
        UIViewController* presentedViewController = rootViewController.presentedViewController;
        return [self lg_topViewControllerWithRootViewController:presentedViewController];
    } else {
        return rootViewController;
    }
}


@end
