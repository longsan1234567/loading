//
//  ProviteLoadingView.h
//  TestLoading
//
//  Created by woosiyuan on 16/8/24.
//  Copyright © 2016年 woosiyuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JQIndicatorView.h"


@interface ProviteLoadingView : UIView

- (void)showWithMessage:(NSString *)title indicatorType:
(NSUInteger)type parentView:(UIView *)parentView;
- (void)dismiss;


@end
