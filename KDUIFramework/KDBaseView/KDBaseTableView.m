//
//  KDBaseTableView.m
//  KDUIFramework
//
//  Created by Acorld on 15-1-23.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//

#import "KDBaseTableView.h"

#if !__has_feature(objc_arc)
#error This file must be compiled with ARC，turn on arc for this file use '-fobjc-arc' in Targets -> Build Phases -> Compile Sources
#endif

@implementation KDBaseTableView

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

+ (id)bornWithFrame:(CGRect)frame
{
    KDBaseTableView *table = [[self alloc] initWithFrame:frame];
    return table;
}

+ (id)bornWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    KDBaseTableView *table = [[self alloc] initWithFrame:frame style:style];
    return table;
}

@end
