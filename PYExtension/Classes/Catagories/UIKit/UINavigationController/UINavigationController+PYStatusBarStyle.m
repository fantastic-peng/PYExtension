//
//  UINavigationController+PYStatusBarStyle.m
//  PengYueTestDemo
//
//  Created by 彭越 on 2017/12/19.
//  Copyright © 2017年 彭越. All rights reserved.
//

#import "UINavigationController+PYStatusBarStyle.h"

@implementation UINavigationController (PYStatusBarStyle)
- (UIViewController *)childViewControllerForStatusBarStyle{
    return self.visibleViewController;
}
@end
