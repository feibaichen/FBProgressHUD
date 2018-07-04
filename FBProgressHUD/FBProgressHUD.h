//
//  FBProgressHUD.h
//  FBProgressHUD
//
//  Created by MacOS on 2018/7/4.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FBProgressHUD : UIView
@property (nonatomic,strong) UIImageView *animateImageView;
@property (nonatomic,strong) UIView *fullScreenBaseView;
@property (nonatomic,strong) UIView *diyBaseView;


+(void)showFBGifHUD;
+(void)hideFBGifHUDwithDlayTime:(NSTimeInterval *)second;

+(void)showFBNormalHUD;
+(void)hideFBNormalHUDwithDlayTime:(NSTimeInterval *)second;

+(void)showFBTextWithGifHUD;
+(void)hideFBTextWithGifHUDwithDlayTime:(NSTimeInterval *)second;

+(void)showFBTextWithImageHUD;
+(void)hideFBTextWithImageHUDwithDlayTime:(NSTimeInterval *)second;

+(void)showFBVoiceWithImageHUD;
+(void)hideFBVoiceWithImageHUDwithDlayTime:(NSTimeInterval *)second;

@end
