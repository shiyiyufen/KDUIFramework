//
//  WDSingleton.h
//
//  Created by Acorld on 15-1-4.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//

#ifndef WeiDian_WDSingleton_h
#define WeiDian_WDSingleton_h

#define WDSINGLETON_HEADER(_classname_) \
+ (_classname_ *)sharedInstance;\

#if __has_feature(objc_arc)//ARC 不实现release、retainCount等方法

#define WDSINGLETON_IMPLEMENTATION(_classname_) \
\
static _classname_ *sharedInstance_ = nil; \
\
+ (_classname_ *)sharedInstance \
{ \
    @synchronized(self) \
    { \
        if (sharedInstance_ == nil) \
        { \
            sharedInstance_ = [[self alloc] init]; \
        } \
    } \
\
    return sharedInstance_; \
} \
\
+ (id)allocWithZone:(NSZone *)zone \
{ \
    @synchronized(self) \
    { \
        if (sharedInstance_ == nil) \
        { \
            sharedInstance_ = [super allocWithZone:zone]; \
            return sharedInstance_; \
        } \
    } \
\
    return nil; \
} \
\
- (id)copyWithZone:(NSZone *)zone \
{ \
    return self; \
} \

#else

#define WDSINGLETON_IMPLEMENTATION(_classname_) \
\
static _classname_ *sharedInstance_ = nil; \
\
+ (_classname_ *)sharedInstance \
{ \
    @synchronized(self) \
    { \
        if (sharedInstance_ == nil) \
        { \
            sharedInstance_ = [[self alloc] init]; \
        } \
    } \
\
    return sharedInstance_; \
} \
\
+ (id)allocWithZone:(NSZone *)zone \
{ \
    @synchronized(self) \
    { \
        if (sharedInstance_ == nil) \
        { \
            sharedInstance_ = [super allocWithZone:zone]; \
            return sharedInstance_; \
        } \
    } \
\
    return nil; \
} \
\
- (id)copyWithZone:(NSZone *)zone \
{ \
    return self; \
} \
\
- (id)retain \
{ \
    return self; \
} \
\
- (NSUInteger)retainCount \
{ \
    return NSUIntegerMax; \
} \
\
- (oneway void)release \
{ \
} \
\
- (id)autorelease \
{ \
    return self; \
}\

#endif

#endif
