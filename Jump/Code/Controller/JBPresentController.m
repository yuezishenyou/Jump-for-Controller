//
//  JBPresentController.m
//  Jump
//
//  Created by maoziyue on 2018/2/11.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "JBPresentController.h"

@interface JBPresentController ()

@end

@implementation JBPresentController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initSubViews];
    
}


- (void)initSubViews
{
    CGFloat width = [[UIScreen mainScreen]bounds].size.width;
    
    CGFloat height = [[UIScreen mainScreen]bounds].size.height;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake((width - 120)/2, (height - 40)/2, 120, 40);
    
    btn.backgroundColor = [UIColor orangeColor];
    
    [btn setTitle:@"模态返回" forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    [btn addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

- (void)backClick
{
    //[self dismissViewControllerAnimated:YES completion:nil];
    
    [self jb_dismissViewControllerAnimated:YES completion:nil];
}













@end
