//
//  UIBarButtonItem+Extension.m
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"
#import "UIButton+Extension.h"
@implementation UIBarButtonItem (Extension)
+(UIBarButtonItem *)lg_itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action{
    return [self lg_itemWithImage:[UIImage imageNamed:imageName] highImage:[UIImage imageNamed:highImageName] target:target action:action];
}

+ (UIBarButtonItem *)lg_itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action {

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:image forState:UIControlStateHighlighted];
    
    //设置按钮的图片的显示方式为自适应
    button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    //设置按钮的尺寸为背景图片的尺寸
    button.lgSize = button.currentImage.size;
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc]initWithCustomView:button];

}

+ (UIBarButtonItem *)backButtonItemWithTarget:(id)target action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"all_head_back"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"all_head_back"] forState:UIControlStateHighlighted];
    button.lgSize = CGSizeMake(44, 44);
    
    //设置按钮的图片的显示方式为自适应
    button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:button];
}



@end
