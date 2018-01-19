//
//  ViewController.m
//  test
//
//  Created by 唐明明 on 2018/1/18.
//  Copyright © 2018年 Methodname. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationController+ModelView.h"

@interface ViewController ()

@property(nonatomic,assign)BOOL flag;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btclick:(id)sender
{
    if (!self.flag) {
        //不满足条件时需要去的事情的页面
        UIViewController *view = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"page1"];
        [view.view setBackgroundColor:[UIColor whiteColor]];
        [view setTitle:@"Page1"];
        
        //showModel的视图为UINavigationController，便于后继有多个操作依然能进行到底
        UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:view];
        __weak ViewController *temp = self;
        [navigation setTmm_completionHandler:^{
            __strong ViewController *sself = temp;
            sself.flag = YES;//条件满足
            [sself btclick:nil];//递归调用当前方法
        }];
        [self showViewController:navigation sender:nil];
    }
    else
    {
        //正常流程满足条件后需要做的事情
        [self callBack];
    }
}



-(void)callBack
{
    NSLog(@"执行完事情了，继续走主流程！");
    UIViewController *view = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"view2"];
    [view.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.navigationController pushViewController:view animated:YES];
}

@end
