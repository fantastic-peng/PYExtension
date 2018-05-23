//
//  UIView+Extension.m
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//
#import "UIView+Extension.h"

@implementation UIView (Extension)

#pragma mark - X
-(void)setLgX:(CGFloat)lgX{
    CGRect frame = self.frame;
    frame.origin.x = lgX;
    self.frame = frame;
}
-(CGFloat)lgX{
    return self.frame.origin.x;
}


#pragma mark - Y
-(void)setLgY:(CGFloat)lgY{
    CGRect frame = self.frame;
    frame.origin.y = lgY;
    self.frame = frame;
}

-(CGFloat)lgY{
    return self.frame.origin.y;
}



#pragma mark - maxX
-(CGFloat)lgMaxX{
    return CGRectGetMaxX(self.frame);
}

-(void)setLgMaxX:(CGFloat)lgMaxX{
    self.lgX = lgMaxX - self.lgWidth;
}


#pragma mark - maxY

-(CGFloat)lgMaxY{
    return CGRectGetMaxY(self.frame);
}

-(void)setLgMaxY:(CGFloat)lgMaxY{
    self.lgY = lgMaxY - self.lgHeight;
}


#pragma mark - centerX

-(void)setLgCenterX:(CGFloat)lgCenterX{
    CGPoint center = self.center;
    center.x = lgCenterX;
    self.center = center;
}

-(CGFloat)lgCenterX{
    return self.center.x;
}

#pragma mark - centerY
-(void)setLgCenterY:(CGFloat)lgCenterY{
    CGPoint center = self.center;
    center.y = lgCenterY;
    self.center = center;
}

-(CGFloat)lgCenterY{
    return self.center.y;
}

#pragma mark - width

-(CGFloat)lgWidth{
    return self.frame.size.width;
}
-(void)setLgWidth:(CGFloat)lgWidth{
    CGRect frame = self.frame;
    frame.size.width = lgWidth;
    self.frame = frame;
}

#pragma mark - height

-(CGFloat)lgHeight{
     return self.frame.size.height;
}

-(void)setLgHeight:(CGFloat)lgHeight{
    CGRect frame = self.frame;
    frame.size.height = lgHeight;
    self.frame = frame;
}


#pragma mark - size

-(void)setLgSize:(CGSize)lgSize{
    CGRect frame = self.frame;
    frame.size = lgSize;
    self.frame = frame;
}

-(CGSize)lgSize{
    return self.frame.size;
}






-(void)lg_removeAllSubviews{
    if (self.subviews.count > 0) {
        [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            UIView *view = obj;
            [view removeFromSuperview];
        }];
    }
}



@end
