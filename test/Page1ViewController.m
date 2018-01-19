//
//  Page1ViewController.m
//  test
//
//  Created by 唐明明 on 2018/1/18.
//  Copyright © 2018年 Methodname. All rights reserved.
//

#import "Page1ViewController.h"

@interface Page1ViewController ()

@end

@implementation Page1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%ld",self.navigationController.modalPresentationStyle);
}

- (IBAction)btClick:(id)sender {
    
    
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}


-(void)dismissDetailView
{
    //[self.navigationController dismissModalViewControllerAnimated:YES];
}



@end
