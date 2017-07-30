//
//  KDNavigationController.m
//  KDMeiTuan
//
//  Created by Starkda  on 2017/7/30.
//  Copyright © 2017年 Starkda . All rights reserved.
//

#import "KDNavigationController.h"

@interface KDNavigationController ()

@end

@implementation KDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //把导航控制器自带的导航条隐藏,隐藏是为了之后自己创建
    self.navigationBar.hidden = YES;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
