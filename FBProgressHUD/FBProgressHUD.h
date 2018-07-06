//
//  FBProgressHUD.h
//  FBProgressHUD
//
//  Created by MacOS on 2018/7/4.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FBProgressHUD : UIView
//@property (nonatomic,strong) UIWindow *window;
@property (nonatomic,strong) UIImageView *animateImageView;
@property (nonatomic,strong) UIView *fullScreenBaseView;
@property (nonatomic,strong) UIView *diyBaseView;

@property (nonatomic,strong) UILabel *normalText;
@property (nonatomic,strong) UIView *imageWithTextView;
@property (nonatomic,strong) UIView *textWithGifView;
@property (nonatomic,strong) UIView *imageWithVoiceView;


-(void)showFBGifHUD;
-(void)hideFBGifHUDwithDlayTime:(NSTimeInterval)second;

-(void)showFBNormalTextHUD:(NSString *)text;
-(void)hideFBNormalTextHUDwithDlayTime:(NSTimeInterval)second;

-(void)showFBTextWithGifHUD:(NSString *)text;
-(void)hideFBTextWithGifHUDwithDlayTime:(NSTimeInterval)second;

-(void)showFBTextWithImageHUD:(NSString *)text;
-(void)hideFBTextWithImageHUDwithDlayTime:(NSTimeInterval)second;

-(void)showFBVoiceWithImageHUD;
-(void)hideFBVoiceWithImageHUDwithDlayTime:(NSTimeInterval)second;

@end
