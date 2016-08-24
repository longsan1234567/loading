//
//  ProviteLoadingView.m
//  TestLoading
//
//  Created by woosiyuan on 16/8/24.
//  Copyright © 2016年 woosiyuan. All rights reserved.
//

#import "ProviteLoadingView.h"

@interface ProviteLoadingView()
@property (strong, nonatomic) IBOutlet UIView *backView;
@property (weak, nonatomic)   IBOutlet UIView *indicatorView;
@property (weak, nonatomic)   IBOutlet UILabel *textLab;
@property (strong,nonatomic)  UIView *parentView;
@property (nonatomic, strong) JQIndicatorView *indicator;
@end


@implementation ProviteLoadingView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)showWithMessage:(NSString *)title indicatorType:
             (NSUInteger)type parentView:(UIView *)parentView{
    [self setAwake:title indicatorType:
    type parentView:parentView];
    self.backView.center = parentView.center;
    self.backView.backgroundColor = [UIColor clearColor];
    [self addSubview:self.backView];
}

-(void)setAwake:(NSString *)title indicatorType:
(NSUInteger)type parentView:(UIView *)parentView{
    [[NSBundle mainBundle] loadNibNamed:@"ProviteLoadingView" owner:self options:nil];
   self.backgroundColor = [UIColor clearColor];
     self.indicator = [[JQIndicatorView alloc] initWithType:type tintColor:[UIColor colorWithRed:0.400 green:0.800 blue:1.000 alpha:1.000]];
    self.indicator.center = self.indicatorView.center;
    [self.indicatorView addSubview:self.indicator];
    [self.indicator startAnimating];
    self.textLab.text = title;
    [self addSubview:self.backView];
    self.parentView = parentView;
    [parentView addSubview:self];
}

- (void)dismiss{
    [self.indicator  stopAnimating];
    [self removeFromSuperview];
    
}
@end
