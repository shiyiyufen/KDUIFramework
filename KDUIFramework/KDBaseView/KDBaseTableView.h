//
//  KDBaseTableView.h
//  KDUIFramework
//
//  Created by Acorld on 15-1-23.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KDBaseTableView : UITableView

/**
 *  @author Acorld, 15-01-23
 *
 *  @brief  快速创建列表
 *
 *  @param frame
 *
 *  @return
 */
+ (id)bornWithFrame:(CGRect)frame;

/**
 *  @author Acorld, 15-01-23
 *
 *  @brief  快速创建列表-style
 *
 *  @param frame
 *  @param style    列表样式plain/group
 *
 *  @return 
 */
+ (id)bornWithFrame:(CGRect)frame style:(UITableViewStyle)style;

@end
