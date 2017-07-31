//
//  KDNavigationBar.m
//  KDMeiTuan
//
//  Created by Starkda  on 2017/7/31.
//  Copyright © 2017年 Starkda . All rights reserved.
//

#import "KDNavigationBar.h"

@implementation KDNavigationBar

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        //下面两行导航会让导航条彻底透明没有阴影线
        [self setShadowImage:[UIImage new]];
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        
        //创建一个imageView来让导航条样式,将要修改此控件的透明度实现渐变效果
        UIImageView *BGImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_navigationBar_white"]];
        
        [self addSubview:BGImageView];
        
        [BGImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.offset(0);
        }];
        
        _BGImageView = BGImageView;
        
    }
    
    return self;
    
}













/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
