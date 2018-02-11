//
//  JBBaseController.m
//  Jump
//
//  Created by maoziyue on 2018/2/11.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "JBBaseController.h"

@interface JBBaseController ()<CAAnimationDelegate>

@end

@implementation JBBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
   
   
 
   
    
}

- (void)setBackButtonItem
{
     self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"< 返回" style:UIBarButtonItemStyleDone target:self action:@selector(backClick)];
}

- (void)backClick
{
    [self.navigationController popViewControllerAnimated:NO];
}


- (void)jb_pushViewController:(UIViewController *)controller animated:(BOOL)animated
{
    //push：
    CATransition *transition = [CATransition animation];
    transition.duration = 0.4f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromTop;
    transition.delegate = self;
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    [self.navigationController pushViewController:controller animated:NO];
}

- (void)jb_popViewControllerAnimated:(BOOL)animated
{
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionReveal;
    transition.subtype = kCATransitionFromBottom;
    transition.delegate = self;
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)jb_presentViewController:(UIViewController *)controller animated:(BOOL)animated completion:(void(^)(void))completion
{
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromRight;
    [[[UIApplication sharedApplication].keyWindow layer]addAnimation:transition forKey:nil];
    [self presentViewController:controller animated:NO completion:completion];
}

- (void)jb_dismissViewControllerAnimated:(BOOL)animated completion:(void(^)(void))completion
{
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromLeft;
    [[[UIApplication sharedApplication].keyWindow layer]addAnimation:transition forKey:nil];
    [self dismissViewControllerAnimated:NO completion:completion];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}














@end
