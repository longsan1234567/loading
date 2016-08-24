//
//  ViewController.m
//  TestLoading
//
//  Created by woosiyuan on 16/8/24.
//  Copyright © 2016年 woosiyuan. All rights reserved.
//

#import "ViewController.h"
#import "ProviteLoadingView.h"

@interface ViewController ()
@property (nonatomic,strong)  ProviteLoadingView *showview;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0,0, 100, 100);
    [btn setTitle:@"消失" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(didFinished) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    
    
    self.showview = [[ProviteLoadingView alloc]init];
    [self.showview showWithMessage:@"加载中..." indicatorType: 4 parentView:self.view];
    
}

- (void)didFinished{
    [self.showview dismiss];
    
}
@end
