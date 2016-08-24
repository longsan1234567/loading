# loading
 
 @property (nonatomic,strong)  ProviteLoadingView *showview;
 self.showview = [[ProviteLoadingView alloc]init];
    [self.showview showWithMessage:@"加载中..." indicatorType: 4 parentView:self.view];
    
    - (void)didFinished{
    [self.showview dismiss];
    
}

