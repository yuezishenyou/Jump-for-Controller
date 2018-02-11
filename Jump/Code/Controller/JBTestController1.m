//
//  JBTestController1.m
//  Jump
//
//  Created by maoziyue on 2018/2/11.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "JBTestController1.h"

@interface JBTestController1 ()

@end

@implementation JBTestController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [self setBackButtonItem];
    
}

- (void)backClick
{
    [self jb_popViewControllerAnimated:YES];
}


@end
