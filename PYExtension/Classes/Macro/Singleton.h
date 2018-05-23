//
//  Singleton.h
//  LGExtensions
//
//  Created by Corotata on 16/7/8.
//  Copyright © 2016年 Ligo Technology. All rights reserved.
//

#ifndef Singleton_h
#define Singleton_h

/*
 专门用来保存单例代码
 */

// @interface
#define singleton_interface(className) \
+ (className *)shared##className;


// @implementation
#define singleton_implementation(className) \
static className *_instance; \
+ (id)allocWithZone:(NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
+ (className *)shared##className \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
}



#endif /* Singleton_h */
