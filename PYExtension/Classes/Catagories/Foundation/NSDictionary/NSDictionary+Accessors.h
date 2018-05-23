//
//  NSDictionary+Accessors.h
//  Belle
//
//  Created by Allen Hsu on 1/11/14.
//  Copyright (c) 2014 Allen Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Accessors)

- (BOOL)lg_isKindOfClass:(Class)aClass forKey:(NSString *)key;
- (BOOL)lg_isMemberOfClass:(Class)aClass forKey:(NSString *)key;
- (BOOL)lg_isArrayForKey:(NSString *)key;
- (BOOL)lg_isDictionaryForKey:(NSString *)key;
- (BOOL)lg_isStringForKey:(NSString *)key;
- (BOOL)lg_isNumberForKey:(NSString *)key;

- (NSArray *)lg_arrayForKey:(NSString *)key;
- (NSDictionary *)lg_dictionaryForKey:(NSString *)key;
- (NSString *)lg_stringForKey:(NSString *)key;
- (NSNumber *)lg_numberForKey:(NSString *)key;
- (double)lg_doubleForKey:(NSString *)key;
- (float)lg_floatForKey:(NSString *)key;
- (int)lg_intForKey:(NSString *)key;
- (unsigned int)lg_unsignedIntForKey:(NSString *)key;
- (NSInteger)lg_integerForKey:(NSString *)key;
- (NSUInteger)lg_unsignedIntegerForKey:(NSString *)key;
- (long long)lg_longLongForKey:(NSString *)key;
- (unsigned long long)lg_unsignedLongLongForKey:(NSString *)key;
- (BOOL)lg_boolForKey:(NSString *)key;

@end