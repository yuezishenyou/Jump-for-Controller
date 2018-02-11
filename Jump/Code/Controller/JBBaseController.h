//
//  JBBaseController.h
//  Jump
//
//  Created by maoziyue on 2018/2/11.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JBBaseController : UIViewController

// 设置才会有  模态样式的压栈跳转
- (void)setBackButtonItem;

- (void)backClick;

- (void)jb_pushViewController:(UIViewController *)controller animated:(BOOL)animated;

- (void)jb_popViewControllerAnimated:(BOOL)animated;


// 压栈样式的模态跳转
- (void)jb_presentViewController:(UIViewController *)controller animated:(BOOL)animated completion:(void(^)(void))completion;

- (void)jb_dismissViewControllerAnimated:(BOOL)animated completion:(void(^)(void))completion;






@end
