//
//  ViewController.m
//  状态栏指示器
//
//  Created by myh on 16/6/2.
//  Copyright © 2016年 myh. All rights reserved.
//

#import "ViewController.h"
#import "MYHStatusBarHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)success:(id)sender {
    
    [MYHStatusBarHUD showSuccess:@"加载成功"];
    
}

- (IBAction)error:(id)sender {
    [MYHStatusBarHUD showError:@"加载失败"];
}

- (IBAction)loading:(id)sender {
    
    [MYHStatusBarHUD showLoading:@"正在加载中"];
}

- (IBAction)hide:(id)sender {
    [MYHStatusBarHUD showHide];
    
    
}
- (IBAction)normal:(id)sender {
    UIImage *image = [UIImage imageNamed:@"piggy_sleep"];
    [MYHStatusBarHUD showMessage:@"我想睡觉" image:image];
}

@end
