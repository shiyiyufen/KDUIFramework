//
//  KDTextField.h
//  KDUIFramework
//
//  Created by Acorld on 15-1-23.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//  
//  **************************<<<You need know>>>**********************
//
//  1.Optional 类别 不支持对属性的kvo，因只声明了method，不是property
//
//  *******************************************************************
//

#import "KDBaseView.h"

@interface KDTextField : KDBaseView

#pragma mark - 标准
#pragma mark -

/// 占位符
@property (copy) NSString *placeholder;

/// 字体，default：system 14
@property (strong) UIFont *font;

/// 文字颜色，default：blackColor
@property (strong) UIColor *textColor;

#pragma mark - 扩展
#pragma mark -

/// 边框颜色，default：nil
@property (strong) UIColor *borderColor;

/// 边框圆角半径，default：0.0f
@property (assign) CGFloat borderWidth;

/// 背景图片，default：nil
@property (strong) UIImage *backgroundImage;

/// 输入框偏移，default：(5, 5, 5, 5)
@property (assign) UIEdgeInsets contentInsets;

@end

