//
//  WDDataSecurityManager.h
//  WDCommlib
//
//  Created by Acorld on 15-2-3.
//  Copyright (c) 2015年 赵 一山. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WDSingleton.h"
/**
 *  @author Acorld, 15-02-03
 *
 *  @brief  对返回数据作安全解析
 */
@interface WDDataSecurityManager : NSObject

WDSINGLETON_HEADER(WDDataSecurityManager)

/**
 *  @author Acorld, 15-02-03
 *
 *  @brief  作空值过滤处理-任意对象
 *
 *  @param value 处理过的安全数据
 *
 *  @return
 */
- (id)parseFromKeyValue:(id)value;

/**
 *  @author Acorld, 15-02-03
 *
 *  @brief  作空值过滤处理-字典对象
 *
 *  @param dictionary 处理过的安全数据
 *
 *  @return
 */
- (NSDictionary *)parseFromDictionary:(NSDictionary *)dictionary;

/**
 *  @author Acorld, 15-02-03
 *
 *  @brief  作空值过滤处理-数组对象
 *
 *  @param array 处理过的安全数据
 *
 *  @return
 */
- (NSArray *)parseFromArray:(NSArray *)array;

@end
