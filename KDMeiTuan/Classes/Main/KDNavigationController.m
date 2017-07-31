//
//  KDNavigationController.m
//  KDMeiTuan
//
//  Created by Starkda  on 2017/7/30.
//  Copyright © 2017年 Starkda . All rights reserved.
//

#import "KDNavigationController.h"
#import "KDBaseControllerViewController.h"

@interface KDNavigationController ()

@end

@implementation KDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //把导航控制器自带的导航条隐藏掉
    self.navigationBar.hidden = YES;
    
    //把导航控制器自带的导航条隐藏,隐藏是为了之后自己创建 但是会禁用掉导航控制器自带侧滑POP功能
//    self.navigationBar.hidden = YES;
    
    
}


- (void)pushViewController:(KDBaseControllerViewController*)viewController animated:(BOOL)animated{
    
    [super pushViewController:viewController animated:animated];
    
    //只给导航控制器以外的控制器
    if (self.childViewControllers.count > 1) {
        //给导航条设置左边的按钮
        viewController.navItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_backItem"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        
        
    }
    
}


//点击左边按钮返回

- (void)back{
    
    [self popViewControllerAnimated:YES];
    
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
