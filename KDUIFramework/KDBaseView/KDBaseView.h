//
//  KDBaseView.h
//  KDUIFramework
//
//  Created by Acorld on 15-1-23.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KDBaseView : UIView

/**
 *  @author Acorld, 15-01-23
 *
 *  @brief  快速创建子view
 *
 *  @return
 */
+ (id)born;

/**
 *  @author Acorld, 15-01-23
 *
 *  @brief  快速创建子view-frame
 *
 *  @param frame
 *
 *  @return
 */
+ (id)bornWithFrame:(CGRect)frame;

@end

