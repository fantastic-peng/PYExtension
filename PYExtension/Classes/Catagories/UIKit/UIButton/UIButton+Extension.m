//
//  UIButton+lgExtension.m
//  lgtataLibrary
//
//  Created by lgtata
//  Copyright (c) 2015年 lgtata. All rights reserved.
//

#import "UIButton+Extension.h"
#import "UIImage+Extension.h"
#import "NSString+StringAppend.h"
@implementation UIButton (Extension)
#pragma mark - 提供快速设置普通状态、选中状态、以及高亮状态的文字颜色
-(void)setLgTitleColor:(UIColor *)lgTitleColor{
    [self setTitleColor:lgTitleColor forState:UIControlStateNormal];
}
-(UIColor *)lgTitleColor{
    return nil;
}

#pragma mark
-(void)setLgHighlightedTitleColor:(UIColor *)lgHighlightedTitleColor{
    [self setTitleColor:lgHighlightedTitleColor forState:UIControlStateHighlighted];
}

-(UIColor *)lgHighlightedTitleColor{
    return nil;
}

#pragma mark
-(void)setLgSelectedTitleColor:(UIColor *)lgSelectedTitleColor{
     [self setTitleColor:lgSelectedTitleColor forState:UIControlStateSelected];
}
-(UIColor *)lgSelectedTitleColor{
    return nil;
}

#pragma mark - 提供快速设置普通状态、选中状态、以及高亮状态的文字内容
-(void)setLgTitle:(NSString *)lgTitle{
     [self setTitle:lgTitle forState:UIControlStateNormal];
}
-(NSString *)lgTitle{
    return nil;
}

#pragma mark
-(void)setLgHighlightedTitle:(NSString *)lgHighlightedTitle{
    [self setTitle:lgHighlightedTitle forState:UIControlStateHighlighted];
}
-(NSString *)lgHighlightedTitle{
    return nil;
}

#pragma mark
-(void)setLgSelectedTitle:(NSString *)lgSelectedTitle{
    [self setTitle:lgSelectedTitle forState:UIControlStateSelected];
}
-(NSString *)lgSelectedTitle{
    return nil;
}

#pragma mark - 提供快速设置普通状态、选中状态、以及高亮状态的图片
-(void)setLgImage:(NSString *)lgImage{
     [self setImage:[UIImage lg_stretchImageWithName:lgImage] forState:UIControlStateNormal];
}
-(NSString *)lgImage{
    return nil;
}

#pragma mark
-(void)setLgHighlightedImage:(NSString *)lgHighlightedImage{
    [self setImage:[UIImage lg_stretchImageWithName:lgHighlightedImage] forState:UIControlStateHighlighted];
}
-(NSString *)lgHighlightedImage{
    return nil;
}

#pragma mark
-(void)setLgSelectedImage:(NSString *)lgSelectedImage{
    [self setImage:[UIImage lg_stretchImageWithName:lgSelectedImage] forState:UIControlStateSelected];
}
-(NSString *)lgSelectedImage{
    return nil;
}


#pragma mark - 提供快速设置普通状态、选中状态、以及高亮状态的背景图片
-(void)setLgBgImage:(NSString *)lgBgImage{
    [self setBackgroundImage:[UIImage lg_stretchImageWithName:lgBgImage] forState:UIControlStateNormal];
}
-(NSString *)lgBgImage{
    return nil;
}

#pragma mark
-(void)setLgHighlightedBgImage:(NSString *)lgHighlightedBgImage{
    [self setBackgroundImage:[UIImage lg_stretchImageWithName:lgHighlightedBgImage] forState:UIControlStateHighlighted];

}
-(NSString *)lgHighlightedBgImage{
    return nil;
}

-(void)setLgSelectedBgImage:(NSString *)lgSelectedBgImage{
        [self setBackgroundImage:[UIImage lg_stretchImageWithName:lgSelectedBgImage] forState:UIControlStateSelected];
}
-(NSString *)lgSelectedBgImage{
    return nil;
}



#pragma mark - 添加点击事件
- (void)lg_addTarget:(id)target action:(SEL)action
{
    [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}


-(void)lg_setStateImage:(NSString *)icon{
    NSString *highlightedString = [icon lg_appendFileName:@"_highlighted"];
    NSString *selectString = [icon lg_appendFileName:@"_select"];
    if (icon) {
        self.lgImage = icon;
    }
    if (highlightedString) {
        self.lgHighlightedImage = highlightedString;
    }
    if (selectString) {
        self.lgSelectedImage = selectString;
    }
}

-(void)lg_setBackgroundStateImage:(NSString *)icon{
    NSString *highlightedString = [icon lg_appendFileName:@"_highlighted"];
    NSString *selectString = [icon lg_appendFileName:@"_select"];
    if (icon) {
        self.lgBgImage = icon;
    }
    if (highlightedString) {
        self.lgHighlightedBgImage = highlightedString;
    }
    if (selectString) {
        self.lgSelectedBgImage = selectString;
    }
}

@end
