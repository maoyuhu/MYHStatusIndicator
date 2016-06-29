//
//  MYHStatusBarHUD.h
//  状态栏指示器
//
//  Created by myh on 16/6/2.
//  Copyright © 2016年 myh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MYHStatusBarHUD : NSObject

/**
 *  显示普通的文字的指示器 加图片
 *
 *  @param msg <#msg description#>
 */
+ (void)showMessage:(NSString *)msg image :(UIImage *)image;


/**
 *  显示普通的文字的指示器
 *
 *  @param msg <#msg description#>
 */

+ (void)showMessage:(NSString *)msg;
/**
 *  显示成功的指示器
 *
 *  @param msg <#msg description#>
 */
+ (void)showSuccess:(NSString *)msg;
/**
 *  显示失败的指示器
 *
 *  @param msg <#msg description#>
 */
+ (void)showError:(NSString *)msg;
/**
 *  显示加载的指示器
 *
 *  @param msg <#msg description#>
 */
+ (void)showLoading:(NSString *)msg;
/**
 *  显示影藏的指示器
 *
 *  @param msg <#msg description#>
 */
+ (void)showHide;
@end
