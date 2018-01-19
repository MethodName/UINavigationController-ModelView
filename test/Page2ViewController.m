//
//  Page2ViewController.m
//  test
//
//  Created by 唐明明 on 2018/1/19.
//  Copyright © 2018年 Methodname. All rights reserved.
//

#import "Page2ViewController.h"
#import "UINavigationController+ModelView.h"

@interface Page2ViewController ()

@end

@implementation Page2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.navigationController.tmm_isShowModelView) {
        NSLog(@"是的");
    }
    else
    {
        NSLog(@"不是的");
    }
    
}


- (IBAction)btClick:(id)sender {
    if(![self.navigationController tmm_dismissViewControllerAnimated:YES])
    {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

@end
