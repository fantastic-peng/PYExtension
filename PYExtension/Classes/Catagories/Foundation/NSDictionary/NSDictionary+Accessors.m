//
//  NSDictionary+Accessors.m
//  Belle
//
//  Created by Allen Hsu on 1/11/14.
//  Copyright (c) 2014 Allen Hsu. All rights reserved.
//

#import "NSDictionary+Accessors.h"

@implementation NSDictionary (Accessors)

- (BOOL)lg_isKindOfClass:(Class)aClass forKey:(NSString *)key
{
    id value = [self objectForKey:key];
    return [value isKindOfClass:aClass];
}

- (BOOL)lg_isMemberOfClass:(Class)aClass forKey:(NSString *)key
{
    id value = [self objectForKey:key];
    return [value isMemberOfClass:aClass];
}

- (BOOL)lg_isArrayForKey:(NSString *)key
{
    return [self lg_isKindOfClass:[NSArray class] forKey:key];
}

- (BOOL)lg_isDictionaryForKey:(NSString *)key
{
    return [self lg_isKindOfClass:[NSDictionary class] forKey:key];
}

- (BOOL)lg_isStringForKey:(NSString *)key
{
    return [self lg_isKindOfClass:[NSString class] forKey:key];
}

- (BOOL)lg_isNumberForKey:(NSString *)key
{
    return [self lg_isKindOfClass:[NSNumber class] forKey:key];
}

- (NSArray *)lg_arrayForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return nil;
    }
    if ([value isKindOfClass:[NSArray class]]) {
        return value;
    }
    return nil;
}

- (NSDictionary *)lg_dictionaryForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return nil;
    }
    if ([value isKindOfClass:[NSDictionary class]]) {
        return value;
    }
    return nil;
}

- (NSString *)lg_stringForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return nil;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return value;
    } else if ([value respondsToSelector:@selector(description)]) {
        return [value description];
    }
    return nil;
}

- (NSNumber *)lg_numberForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return nil;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return value;
    } else if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
        return [nf numberFromString:value];
    }
    return nil;
}

- (double)lg_doubleForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value doubleValue];
    }
    return 0;
}

- (float)lg_floatForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value floatValue];
    }
    return 0;
}

- (int)lg_intForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value intValue];
    }
    return 0;
}

- (unsigned int)lg_unsignedIntForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
        value = [nf numberFromString:value];
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedIntValue];
    }
    return 0;
}

- (NSInteger)lg_integerForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value integerValue];
    }
    return 0;
}

- (NSUInteger)lg_unsignedIntegerForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
        value = [nf numberFromString:value];
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedIntegerValue];
    }
    return 0;
}

- (long long)lg_longLongForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value longLongValue];
    }
    return 0;
}

- (unsigned long long)lg_unsignedLongLongForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
        value = [nf numberFromString:value];
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedLongLongValue];
    }
    return 0;
}

- (BOOL)lg_boolForKey:(NSString *)key
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return NO;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value boolValue];
    }
    return NO;
}

@end
