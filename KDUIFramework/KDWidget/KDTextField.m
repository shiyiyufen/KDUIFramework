//
//  KDTextField.m
//  KDUIFramework
//
//  Created by Acorld on 15-1-23.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//

#import "KDTextField.h"
#import "KDBaseTextField.h"

@interface KDTextField ()

/// 输入框
@property (strong) KDBaseTextField *textField;

/// 背景图片
@property (strong) UIImageView *bgImageView;

@end

@implementation KDTextField

#pragma mark - 初始化
#pragma mark -

- (id)init
{
    if (self = [super init])
    {
        [self defaultConfig];
        [self bringUp];
    }
    return self;
}

#pragma mark - Config
#pragma mark -

- (void)defaultConfig
{
    self.font            = [UIFont systemFontOfSize:14];
    self.textColor       = [UIColor blackColor];
    self.placeholder     = nil;

    self.contentInsets   = UIEdgeInsetsMake(5, 5, 5, 5);
    self.backgroundColor = [UIColor whiteColor];
    self.backgroundImage = nil;
    self.borderColor     = nil;
    self.borderWidth     = 0.0f;
}

- (void)bringUp
{
    CGRect rect = (CGRect){_contentInsets.left,_contentInsets.top,
        self.bounds.size.width - _contentInsets.left - _contentInsets.right,
        self.bounds.size.height - _contentInsets.top - _contentInsets.bottom};
    _textField = [KDBaseTextField bornWithFrame:rect];
    
    _textField.backgroundColor = [UIColor whiteColor];
    [self addSubview:_textField];
}

- (UIImageView *)bgImageView
{
    if (nil == _bgImageView)
    {
        _bgImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        _bgImageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self addSubview:_bgImageView];
    }
    return _bgImageView;
}

#pragma mark - Action
#pragma mark -

- (void)updateUI:(CGRect)rect
{
    _textField.font = _font;
    _textField.textColor = _textColor;
    _textField.placeholder = _placeholder;
    
    if (_borderColor && _borderWidth != 0.0f)
    {
        self.layer.masksToBounds = YES;
        self.layer.borderWidth = _borderWidth;
        self.layer.borderColor = _borderColor.CGColor;
    }
    
    if (_backgroundImage)
    {
        [self bgImageView];
        _bgImageView.image = _backgroundImage;
    }
        
    CGRect frame = (CGRect){_contentInsets.left,_contentInsets.top,
        rect.size.width - _contentInsets.left - _contentInsets.right,
        rect.size.height - _contentInsets.top - _contentInsets.bottom};
    _textField.frame = frame;
}

#pragma mark - Draw
#pragma mark -

- (void)drawRect:(CGRect)rect
{
    [self updateUI:rect];
    [super drawRect:rect];
}

@end
