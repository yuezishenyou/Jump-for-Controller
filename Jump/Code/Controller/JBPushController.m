
//
//  JBPushController.m
//  Jump
//
//  Created by maoziyue on 2018/2/11.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "JBPushController.h"
#import "JBTestController1.h"

@interface JBPushController ()

@end

@implementation JBPushController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self initSubViews];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"ppp" style:UIBarButtonItemStyleDone target:self action:@selector(pushAction)];
    
}

//- (void)setBackButtonItem{}

- (void)initSubViews
{
    CGFloat width = [[UIScreen mainScreen]bounds].size.width;
    
    CGFloat height = [[UIScreen mainScreen]bounds].size.height;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake((width - 120)/2, (height - 40)/2, 120, 40);
    
    btn.backgroundColor = [UIColor orangeColor];
    
    [btn setTitle:@"压栈返回" forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    [btn addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

- (void)backClick
{
    //[self.navigationController popViewControllerAnimated:YES];
    [self jb_popViewControllerAnimated:YES];
}


- (void)pushAction
{
    JBTestController1 *vc = [[JBTestController1 alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}








@end
