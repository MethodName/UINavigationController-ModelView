//
//  UINavigationController+ModelView.m
//  test
//
//  Created by 唐明明 on 2018/1/19.
//  Copyright © 2018年 Methodname. All rights reserved.
//

#import "UINavigationController+ModelView.h"
#import <objc/runtime.h>

@implementation UINavigationController (ModelView)


static NSString *tmm_completionHandlerKey = @"_completionHandler";
-(TMMModelViewNavigationCompletionHandler)tmm_completionHandler
{
    return objc_getAssociatedObject(self, &tmm_completionHandlerKey);
}

-(void)setTmm_completionHandler:(TMMModelViewNavigationCompletionHandler)tmm_completionHandler
{
    self.tmm_isShowModelView = YES;
    objc_setAssociatedObject(self, &tmm_completionHandlerKey, tmm_completionHandler, OBJC_ASSOCIATION_RETAIN);
}

static NSString *tmm_isShowModelViewKey = @"_isShowModelView";
-(BOOL)tmm_isShowModelView
{
    return [objc_getAssociatedObject(self, &tmm_isShowModelViewKey) boolValue];
}

-(void)setTmm_isShowModelView:(BOOL)tmm_isShowModelView
{
    objc_setAssociatedObject(self, &tmm_isShowModelViewKey, [NSNumber numberWithBool:tmm_isShowModelView], OBJC_ASSOCIATION_RETAIN);
}


-(BOOL)tmm_dismissViewControllerAnimated:(BOOL)animated
{
    if (self.tmm_isShowModelView) {
        [self dismissViewControllerAnimated:animated completion:self.tmm_completionHandler];
    }
    return self.tmm_isShowModelView;
}


@end
