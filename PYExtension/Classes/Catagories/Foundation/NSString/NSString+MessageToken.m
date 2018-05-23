//
//  NSString+MessageToken.m
//  LGExtensions
//
//  Created by Corotata on 2017/8/21.
//  Copyright © 2017年 Ligo Technology. All rights reserved.
//

#import "NSString+MessageToken.h"

@implementation NSString (MessageToken)

- (NSDictionary *)lg_messageTokenBase64Decode {
    NSDictionary *dictionary = nil;
    NSArray *array = @[self,[NSString stringWithFormat:@"%@=",self],[NSString stringWithFormat:@"%@==",self]];
    for (NSString *str in array) {
        NSData *data = [[NSData alloc] initWithBase64EncodedString:str options:0];
        if (data.length > 0) {
            dictionary = [NSJSONSerialization JSONObjectWithData:(NSData *)data options:NSJSONReadingMutableContainers error:nil];
            break;
        }
    }
    return dictionary;
}



@end
