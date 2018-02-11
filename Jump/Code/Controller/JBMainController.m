//
//  JBMainController.m
//  Jump
//
//  Created by maoziyue on 2018/2/11.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "JBMainController.h"
#import "JBPushController.h"
#import "JBPresentController.h"

@interface JBMainController ()

@end

@implementation JBMainController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"主界面";
    
    [self initSubViews];
    
    UIBarButtonItem *item0 = [[UIBarButtonItem alloc]initWithTitle:@"模态"
                                                             style:UIBarButtonItemStyleDone
                                                            target:self
                                                            action:@selector(present)];
    
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithTitle:@"压栈"
                                                             style:UIBarButtonItemStyleDone
                                                            target:self
                                                            action:@selector(push)];
    

    self.navigationItem.leftBarButtonItem  = item0;
    
    self.navigationItem.rightBarButtonItem = item1;
    


}

- (void)push
{
    JBPushController *vc = [[JBPushController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)present
{
    JBPresentController *vc = [[JBPresentController alloc]init];
    
    [self presentViewController:vc animated:YES completion:nil];
}





- (void)initSubViews
{
    UIButton *btn0 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn0.frame = CGRectMake(20, 200, 120, 40);
    
    btn0.backgroundColor = [UIColor redColor];
    
    [btn0 setTitle:@"自定义模态" forState:UIControlStateNormal];
    
    [btn0 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    [btn0 addTarget:self action:@selector(presentAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn0];
    
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn1.frame = CGRectMake(320 - 60, 200, 120, 40);
    
    btn1.backgroundColor = [UIColor redColor];
    
    [btn1 setTitle:@"自定义压栈" forState:UIControlStateNormal];
    
    [btn1 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    [btn1 addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];
    
}

- (void)pushAction
{
    //push：
    JBPushController *controller = [[JBPushController alloc]init];
    
    [self jb_pushViewController:controller animated:YES];
    
}

- (void)presentAction
{

    JBPresentController *vc = [[JBPresentController alloc]init];
    
    //[self presentViewController:vc animated:YES completion:nil];
    
    [self jb_presentViewController:vc animated:YES completion:nil];
}















@end
