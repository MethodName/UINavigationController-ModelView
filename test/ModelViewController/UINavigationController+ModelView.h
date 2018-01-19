//
//  UINavigationController+ModelView.h
//  test
//
//  Created by 唐明明 on 2018/1/19.
//  Copyright © 2018年 Methodname. All rights reserved.
//

#import <UIKit/UIKit.h>

//主流程执行回调bolck
typedef void (^ __nullable TMMModelViewNavigationCompletionHandler)(void);

@interface UINavigationController (ModelView)

//声明block属性
@property(nonatomic,copy)TMMModelViewNavigationCompletionHandler tmm_completionHandler;

//是否是showModel视图
@property(nonatomic,assign)BOOL tmm_isShowModelView;

//关闭showModel视图，如果是showModel视图将返回true
-(BOOL)tmm_dismissViewControllerAnimated:(BOOL)animated;


@end
