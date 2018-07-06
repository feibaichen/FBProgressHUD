//
//  ViewController.m
//  FBProgressHUD
//
//  Created by MacOS on 2018/7/4.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "ViewController.h"
#import "FBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FBProgressHUD *fb = [[FBProgressHUD alloc] init];
    //[fb showFBGifHUD];
    
    //[NSThread sleepForTimeInterval:3];
    
    //[fb hideFBGifHUDwithDlayTime:5];
    
    
    //[fb showFBNormalTextHUD:@"登陆失败"];
    
    //[fb hideFBNormalTextHUDwithDlayTime:3];
    
    
    [fb showFBNormalTextHUD:@"登陆成功"];
    
    [fb hideFBNormalTextHUDwithDlayTime:3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
