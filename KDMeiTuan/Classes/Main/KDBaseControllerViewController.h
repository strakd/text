//
//  KDBaseControllerViewController.h
//  KDMeiTuan
//
//  Created by Starkda  on 2017/7/30.
//  Copyright © 2017年 Starkda . All rights reserved.
//

#import <UIKit/UIKit.h>
@class KDNavigationBar;

@interface KDBaseControllerViewController : UIViewController
//导航条
@property (nonatomic, strong) KDNavigationBar *navBar;
//navItem
@property (nonatomic, strong) UINavigationItem *navItem;

//状态栏样式
@property (nonatomic, assign) UIStatusBarStyle statrsBarStyle;

@end
