//
//  WZViewController.m
//  WZProgressHUD
//
//  Created by LiuSky on 11/08/2019.
//  Copyright (c) 2019 LiuSky. All rights reserved.
//

#import "WZViewController.h"
#import <WZProgressHUD/WZProgressHUD.h>

@interface WZViewController ()
@property(nonatomic, strong) UIButton *sender;
@end

@implementation WZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.sender];
}

#pragma mark - 点击
-(void)eventForChick: (UIButton *)sender {
    NSLog(@"");
    [WZProgressHUD setDefaultStyle:WZProgressHUDStyleDark];
    [WZProgressHUD setDefaultAnimationType: WZProgressHUDAnimationTypeFlat];
//    [WZProgressHUD show];
    [WZProgressHUD setMaxSize:CGSizeMake(self.view.frame.size.width - 40, 300)];
    [WZProgressHUD showTextWithStatus:@"这是一段很长"];
}

#pragma mark - lazy
-(UIButton *)sender {
    if (!_sender) {
        _sender = [UIButton buttonWithType:UIButtonTypeCustom];
        _sender.backgroundColor = UIColor.redColor;
        _sender.frame = CGRectMake(0, 0, 200, 44);
        _sender.center = self.view.center;
        [_sender addTarget:self action:@selector(eventForChick:) forControlEvents: UIControlEventTouchUpInside];
    }
    return _sender;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
