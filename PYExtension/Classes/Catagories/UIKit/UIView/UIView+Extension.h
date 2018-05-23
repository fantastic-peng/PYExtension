//
//  UIView+Extension.h
//  LGExtensions
//  该分类主要用来处理快速设置view的坐标属性
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic, assign) CGFloat lgX;
@property (nonatomic, assign) CGFloat lgY;
@property (nonatomic, assign) CGFloat lgMaxX;
@property (nonatomic, assign) CGFloat lgMaxY;
@property (nonatomic, assign) CGFloat lgCenterX;
@property (nonatomic, assign) CGFloat lgCenterY;
@property (nonatomic, assign) CGFloat lgWidth;
@property (nonatomic, assign) CGFloat lgHeight;
@property (nonatomic, assign) CGSize  lgSize;


/** 对所有子view执行removeFromSuperview */
-(void)lg_removeAllSubviews;



@end
