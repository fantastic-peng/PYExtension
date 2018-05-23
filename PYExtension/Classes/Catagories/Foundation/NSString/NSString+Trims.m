//
//  NSString+Trims.m
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#import "NSString+Trims.h"

@implementation NSString (Trims)


-(NSString *)lg_trim{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}





- (BOOL)lg_isEmptyString{
    
    return self.length == 0;
    
}



@end
