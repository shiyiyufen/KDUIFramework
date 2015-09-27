//
//  ViewController.m
//  KDUIFramework
//
//  Created by Acorld on 15-1-23.
//  Copyright (c) 2015年 Acorld. All rights reserved.
//

#import "ViewController.h"
#import "KDTextField.h"
#import "ViewController2.h"
#import "WDDataSecurityManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UI Tests";
    self.view.backgroundColor = [UIColor whiteColor];
    [self test];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"SKIP"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(test2)];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test
{
//    [self test1];
//    [self test3];
}

#pragma mark - Tests
#pragma mark -

- (void)test1
{
    KDTextField *textField = [KDTextField bornWithFrame:(CGRect){60,100,200,44}];
    textField.placeholder  = @"请输入密码";
    textField.font         = [UIFont systemFontOfSize:16];
    textField.textColor    = [UIColor blackColor];
    textField.backgroundColor = [UIColor greenColor];
    [self.view addSubview:textField];
}

- (void)test2
{
    ViewController2 *vc = [ViewController2 new];
    vc.desc = _desc;
    vc.desc2 = _desc2;
    [self.navigationController pushViewController:vc animated:YES];
    vc.fatherVC = self;
}

- (void)test3
{
    NSMutableArray *array = [NSMutableArray new];
    for (int i = 0; i < 10; i ++)
    {
        NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"1",@"10",[NSNull null],@"13",@(10),@"14",@{@"2": @"22",@"3":@"33"},@"15", nil];
        [array addObject:dic];
    }
    
    NSMutableArray *array2 = [[WDDataSecurityManager sharedInstance] parseFromKeyValue:array];
    NSLog(@"array2:%@",array2);
}

@end
