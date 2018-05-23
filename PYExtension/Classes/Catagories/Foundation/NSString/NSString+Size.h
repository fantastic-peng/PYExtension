//
//  NSString+Size.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Size)
/**
 *  计算字条串的Size
 */
-(CGSize)lg_sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW;




@end
