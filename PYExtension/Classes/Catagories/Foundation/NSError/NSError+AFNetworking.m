//
//  NSError+AFNetworking.m
//  LGExtensions
//
//  Created by Corotata on 2017/8/31.
//  Copyright © 2017年 Ligo Technology. All rights reserved.
//

#import "NSError+AFNetworking.h"

@implementation NSError (AFNetworking)

- (NSDictionary *)lg_AFNetworkingHTTPErrorResponse {
    NSData *data = (NSData *)(self.userInfo[@"com.alamofire.serialization.response.error.data"]);
    if(!data){
        return nil;
    }
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    return dict;
}


@end
