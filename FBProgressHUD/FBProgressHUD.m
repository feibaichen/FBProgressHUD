//
//  FBProgressHUD.m
//  FBProgressHUD
//
//  Created by MacOS on 2018/7/4.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "FBProgressHUD.h"

@implementation FBProgressHUD

-(instancetype)init{
    
    self = [super init];
    
    if (self) {
        
        
    }
    return self;
}

-(void)showFBGifHUD{
    
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
        for (int i = 1; i < 60; i++) {
        
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"dropdown_anim__000%d.png",i]];
        [arr addObject:image];
    }
    
    self.animateImageView.image = [UIImage animatedImageWithImages:arr duration:1 ];
    
    [self.fullScreenBaseView addSubview:_animateImageView];
    
    [window addSubview:self.fullScreenBaseView];
    
}
-(void)hideFBGifHUDwithDlayTime:(NSTimeInterval)second{
    
    [self performSelector:@selector(hideFBGifHUD) withObject:self afterDelay:second];
}
-(void)hideFBGifHUD{
    
    [self.fullScreenBaseView setHidden:YES];
    [self.fullScreenBaseView removeFromSuperview];
    
    NSLog(@"%@",_fullScreenBaseView);
}



-(void)showFBNormalTextHUD:(NSString *)text{
    
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    self.normalText.text = text;
    [window addSubview: self.normalText];
}
-(void)hideFBNormalTextHUDwithDlayTime:(NSTimeInterval)second{
    
    [self performSelector:@selector(hideFBNormalTextHUD) withObject:self afterDelay:second];
}
-(void)hideFBNormalTextHUD{
    
    [self.normalText setHidden:YES];
    [_normalText removeFromSuperview];
    
    NSLog(@"%@",_normalText.text);
}



-(void)showFBTextWithGifHUD:(NSString *)text{
    
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    [self.fullScreenBaseView addSubview:self.textWithGifView];
    [window addSubview:self.imageWithTextView];
}
-(void)hideFBTextWithGifHUDwithDlayTime:(NSTimeInterval)second{
    
    [self performSelector:@selector(hideFBTextWithGifHUD) withObject:self afterDelay:second];
}
-(void)hideFBTextWithGifHUD{
    
    [self.fullScreenBaseView setHidden:YES];
    [self.fullScreenBaseView removeFromSuperview];
    
    NSLog(@"%@",_fullScreenBaseView);
}



-(void)showFBTextWithImageHUD:(NSString *)text{
    
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    [self.fullScreenBaseView addSubview:self.imageWithTextView];
    [window addSubview:self.imageWithTextView];
    
}
-(void)hideFBTextWithImageHUDwithDlayTime:(NSTimeInterval)second{
    
    [self performSelector:@selector(hideFBTextWithImageHUD) withObject:self afterDelay:second];
}

-(void)hideFBTextWithImageHUD{
    
    [self.fullScreenBaseView setHidden:YES];
    [self.fullScreenBaseView removeFromSuperview];
    
    NSLog(@"%@",_fullScreenBaseView);
}




-(void)showFBVoiceWithImageHUD{
    
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    [self.fullScreenBaseView addSubview:self.imageWithTextView];
    [window addSubview:self.imageWithTextView];
}
-(void)hideFBVoiceWithImageHUDwithDlayTime:(NSTimeInterval)second{
    [self performSelector:@selector(hideFBVoiceWithImageHUD) withObject:self afterDelay:second];
}
-(void)hideFBVoiceWithImageHUD{
    
    [self.fullScreenBaseView setHidden:YES];
    [self.fullScreenBaseView removeFromSuperview];
    
    NSLog(@"%@",_fullScreenBaseView);
}

-(UIImageView *)animateImageView{
    
    if (!_animateImageView) {
        
        _animateImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
        _animateImageView.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        _animateImageView.clipsToBounds = YES;
        _animateImageView.layer.cornerRadius = 10;
        _animateImageView.backgroundColor = [UIColor orangeColor];
    }
    return _animateImageView;
}
-(UIView *)fullScreenBaseView{
    
    if (!_fullScreenBaseView) {
        
        _fullScreenBaseView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height)];
        _fullScreenBaseView.backgroundColor = [UIColor whiteColor];
    }
    return _fullScreenBaseView;
}
-(UIView *)diyBaseView{
    
    if (!_diyBaseView) {
        
        _diyBaseView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height)];
        _diyBaseView.backgroundColor = [UIColor clearColor];
    }
    return _diyBaseView;
}
-(UILabel *)normalText{
    
    if (!_normalText) {
        
        _normalText = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120 , 30)];
        _normalText.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        _normalText.layer.cornerRadius = 5;
        _normalText.clipsToBounds = YES;
        _normalText.backgroundColor = [UIColor darkTextColor];
        _normalText.textColor = [UIColor whiteColor];
        _normalText.textAlignment = NSTextAlignmentCenter;
        
    }
    return _normalText;
}
-(UIView *)imageWithTextView{
    
    if (!_imageWithTextView) {
        
        _imageWithTextView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
        _imageWithTextView.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        _imageWithTextView.clipsToBounds = YES;
        _imageWithTextView.layer.cornerRadius = 10;
        _imageWithTextView.backgroundColor = [UIColor orangeColor];
    }
    return _imageWithTextView;
}
-(UIView *)textWithGifView{
    
    if (!_textWithGifView) {
        
        _textWithGifView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height)];
        _textWithGifView.backgroundColor = [UIColor clearColor];
    }
    return _textWithGifView;
}
-(UIView *)imageWithVoiceView{
    
    if (!_imageWithVoiceView) {
        
        _imageWithVoiceView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height)];
        _imageWithVoiceView.backgroundColor = [UIColor clearColor];
    }
    return _imageWithVoiceView;
}
@end
