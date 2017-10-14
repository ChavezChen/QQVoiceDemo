//
//  ViewController.m
//  QQVoiceDemo
//
//  Created by 陈旺 on 2017/9/2.
//  Copyright © 2017年 陈旺. All rights reserved.
//

#import "ViewController.h"
#import "CWVoiceView.h"
#import "UIView+CWChat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    CWVoiceView *view = [[CWVoiceView alloc] initWithFrame:CGRectMake(0, self.view.cw_height - 252,self.view.cw_width, 252)];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
