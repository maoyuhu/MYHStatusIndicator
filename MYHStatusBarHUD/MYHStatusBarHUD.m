//
//  MYHStatusBarHUD.m
//  状态栏指示器
//
//  Created by myh on 16/6/2.
//  Copyright © 2016年 myh. All rights reserved.
//

#define kFount [UIFont systemFontOfSize:13]


#import "MYHStatusBarHUD.h"

//下来的时间
static CGFloat const MYHAnimationDuration =0.25f;
//消息停留的时间
static CGFloat const MYHAnimationStopDuration = 2.0f;

@implementation MYHStatusBarHUD

/**
 *  全局窗口
 
 */
static UIWindow *window;

/**
 *  添加定时器

 */
static NSTimer *timer_;


+ (UIWindow *)showWindow{
    
    CGFloat windowH = 20;
    CGRect frame  = CGRectMake(0, -windowH, [UIScreen mainScreen].bounds.size.width, windowH);
    //显示窗口
     window.hidden = YES;
     window = [[UIWindow alloc]init];
     window.windowLevel = UIWindowLevelAlert;
     window.frame = frame ;
     window.backgroundColor = [UIColor blackColor];
    window.hidden = NO;
    
    //动画
    frame.origin.y = 0;
    [UIView animateWithDuration:MYHAnimationDuration animations:^{
        
        window.frame = frame;
    }];


    return window;
}
/**
 *  显示普通信息 文字加图片
 *
 *  @param msg   <#msg description#>
 *  @param image <#image description#>
 */

+ (void)showMessage:(NSString *)msg image:(UIImage *)image{

       [timer_ invalidate];//停止定时器
        [self showWindow];
    
        UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(100, 250, 100, 50)];
        [button setTitle:msg forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button.titleLabel.font = kFount;
        if (image) {
            [button setImage:image forState:UIControlStateNormal];
            button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        }
        button.frame = window.frame;
        [window addSubview:button];
    
        //定时器
       timer_ = [NSTimer scheduledTimerWithTimeInterval:MYHAnimationStopDuration target:self selector:@selector(showHide) userInfo:nil repeats:NO];



}
/**
 *  显示普通信息
 *
 *  @param msg <#msg description#>
 */
+ (void)showMessage:(NSString *)msg{

    [self showMessage:msg image:nil];
}
/**
 *  显示成功
 *
 *  @param msg <#msg description#>
 */
+ (void)showSuccess:(NSString *)msg{
    [self showMessage:msg image:[UIImage imageNamed:@"MYHStatusBarHUD.bundle/success"]];
    

}
/**
 *  显示失败
 *
 *  @param msg <#msg description#>
 */
+ (void)showError:(NSString *)msg{
    [self showMessage:msg image:[UIImage imageNamed:@"MYHStatusBarHUD.bundle/error"]];
    
}
//正在加载
+ (void)showLoading:(NSString *)msg{
    
    [timer_ invalidate];
    timer_ = nil;
    [self showWindow];
    
    //添加文字
    UILabel *label=[[UILabel alloc]init];

    label.text = msg;
    label.font = kFount;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.frame = window.frame;
    [window addSubview:label];
    
    
    //添加zhuanquan
    UIActivityIndicatorView *loadingView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [loadingView startAnimating];
    //文字宽度
    CGFloat msgW  =[msg sizeWithAttributes:@{NSFontAttributeName:kFount}].width;

    CGFloat centerX = (window.frame.size.width - msgW)*0.5 - 20;
    CGFloat centerY = window.frame.size.height*0.5;
    loadingView.center = CGPointMake(centerX, centerY);
    [window addSubview:loadingView];
    
}
/**
 *  显示隐藏
 */
+ (void)showHide{
    
    [UIView animateWithDuration:MYHAnimationDuration animations:^{
        
        CGRect frame = window.frame;
        frame.origin.y = -window.frame.size.height;
        window.frame = frame;
        
    } completion:^(BOOL finished) {
        
        window = nil;
        [timer_ invalidate];
        timer_  = nil;
        
    }];
    

}
@end
