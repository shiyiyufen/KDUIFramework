//
//  KDBaseView.m
//  KDUIFramework
//
//  Created by Acorld on 15-1-23.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//

#import "KDBaseView.h"

#if !__has_feature(objc_arc)
#error This file must be compiled with ARC，turn on arc for this file use '-fobjc-arc' in Targets -> Build Phases -> Compile Sources
#endif

@implementation KDBaseView

#pragma mark - 初始化
#pragma mark -

- (id)init
{
    if (self = [super init])
    {
        //标准化代码
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    KDBaseView *base = [[KDBaseView alloc] init];
    base.frame = frame;
    return base;
}

+ (id)born
{
    KDBaseView *base = [[self alloc] init];
    return base;
}

+ (id)bornWithFrame:(CGRect)frame
{
    KDBaseView *base = [[self alloc] initWithFrame:frame];
    return base;
}

@end
