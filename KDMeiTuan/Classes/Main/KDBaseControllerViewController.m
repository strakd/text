//
//  KDBaseControllerViewController.m
//  KDMeiTuan
//
//  Created by Starkda  on 2017/7/30.
//  Copyright © 2017年 Starkda . All rights reserved.
//

#import "KDBaseControllerViewController.h"
#import "KDNavigationBar.h"

@interface KDBaseControllerViewController ()

@end

@implementation KDBaseControllerViewController

//在push之前提前初始化目标控制器(HMBaseController)
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //为每一个继承至此类的控制器都添加一个导航条
        KDNavigationBar *navBar = [[KDNavigationBar alloc] init];
        
        
        //给导航条添加UINavigationItem
        UINavigationItem *navItem = [[UINavigationItem alloc] init];
        
        //给UiNavigationITem设置到导航条上"建立他和导航条控件的关系"
        //?为什么是@[]
        [navBar setItems:@[navItem]];
        
        _navBar = navBar;
        
        _navItem = navItem;
        
    }
    
    return self;
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //把导航条添加到控制器的view上
    [self.view addSubview:_navBar];
    
    //设置导航条约束
    [_navBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.offset(0);
        make.height.offset(64);
        
    }];
    
   
    
    
}

//?内存警告处理
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    //?虾米意思
    if (self.isViewLoaded && self.view.window == nil) {
        self.view = nil;
    }
    
    
    
    
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
