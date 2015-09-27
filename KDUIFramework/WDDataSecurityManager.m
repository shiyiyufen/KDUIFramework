//
//  WDDataSecurityManager.m
//  WDCommlib
//
//  Created by Acorld on 15-2-3.
//  Copyright (c) 2015年 赵 一山. All rights reserved.
//

#import "WDDataSecurityManager.h"

@implementation WDDataSecurityManager

WDSINGLETON_IMPLEMENTATION(WDDataSecurityManager)

- (id)parseFromKeyValue:(id)value
{
    //值无效
    if([value isKindOfClass:[NSNull class]])
        return nil;
    
    if ([value isKindOfClass:[NSNumber class]])//统一处理为字符串
    {
        value = [NSString stringWithFormat:@"%@",value];
    }else if ([value isKindOfClass:[NSArray class]])//数组
    {
        value = [self parseFromArray:value];
    }else if ([value isKindOfClass:[NSDictionary class]])//字典
    {
        value = [self parseFromDictionary:value];
    }
    return value;
}

- (NSDictionary *)parseFromDictionary:(NSDictionary *)container
{
    if ([container isKindOfClass:[NSDictionary class]])
    {
        NSMutableDictionary *result = [NSMutableDictionary new];
        for (id key in container.allKeys)
        {
            @autoreleasepool
            {
                id value = container[key];

                id safetyValue = [self parseFromKeyValue:value];
                if (safetyValue)
                {
                    [result setObject:safetyValue forKey:key];
                }
            }
        }
        return result;
    }
    return container;
}

- (NSArray *)parseFromArray:(NSArray *)container
{
    if ([container isKindOfClass:[NSArray class]])
    {
        NSMutableArray *result = [NSMutableArray new];
        for (int i = 0; i < container.count; i++)
        {
            @autoreleasepool
            {
                id value = container[i];
                
                id safetyValue = [self parseFromKeyValue:value];
                if (safetyValue)
                {
                    [result addObject:safetyValue];
                }
            }
        }
        return result;
    }
    return container;
}


@end
