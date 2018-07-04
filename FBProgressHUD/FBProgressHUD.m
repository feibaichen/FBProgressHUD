//
//  FBProgressHUD.m
//  FBProgressHUD
//
//  Created by MacOS on 2018/7/4.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "FBProgressHUD.h"

@implementation FBProgressHUD



+(void)showFBGifHUD{
    
    
}

+(void)hideFBGifHUDwithDlayTime:(NSTimeInterval *)second{
    
    
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
        _fullScreenBaseView.backgroundColor = [UIColor clearColor];
    }
    return _fullScreenBaseView;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
