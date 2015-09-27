//
//  ViewController2.m
//  KDUIFramework
//
//  Created by Acorld on 15-2-3.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

/// ss
@property (strong) UITextView *textView;

@property (strong) UITextField *textField;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UITextView *textView = [[UITextView alloc] init];
    textView.frame = (CGRect){10,64 + 10,300,50};
    [self.view addSubview:textView];
    textView.font = [UIFont systemFontOfSize:17];
    textView.backgroundColor = [UIColor whiteColor];
    
//    _desc = [@"Bobbing1\\U20e32\\U20e33\\U20e34\\U20e35\\U20e36\\U20e37\\U20e3" stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    textView.text = _desc;
    
    self.textView = textView;
    
    UITextField *textField = [[UITextField alloc] init];
    textField.frame = (CGRect){10,CGRectGetMaxY(textView.frame) + 5,300,50};
    [self.view addSubview:textField];
    textField.backgroundColor = [UIColor whiteColor];
    textField.text = _desc2;
    
    self.textField = textField;
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = (CGRect){0,210,300,44};
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button2 setTitle:@"BACK" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(backMe) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    // Do any additional setup after loading the view.
}

- (void)backMe
{
    self.fatherVC.desc = _textView.text;
    self.fatherVC.desc2 = _textField.text;
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
