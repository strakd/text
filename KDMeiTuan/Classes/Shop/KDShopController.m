//
//  KDShopController.m
//  KDMeiTuan
//
//  Created by Starkda  on 2017/7/30.
//  Copyright © 2017年 Starkda . All rights reserved.
//

#import "KDShopController.h"
#import "KDFoodDetailController.h"

@interface KDShopController ()
@property (nonatomic, weak) UIView *shopHeaderView;

@end

@implementation KDShopController

- (void)viewDidLoad {
    
    //此行投机写法,为了让他比导航条先添加
    [self setupUI];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置导航控制器背景颜色
    self.view.backgroundColor = [UIColor yellowColor];
    
    //设置导航条的标题
    self.navItem.title = @"🐸青蛙点餐";
    
    
}

//轻触一下
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    
//    
//    KDFoodDetailController *foodDeatilVC = [[KDFoodDetailController alloc] init];
//    
//    //设置push
//    [self.navigationController pushViewController:foodDeatilVC animated:YES];
//    
//    
//}


- (void)setupUI{
    
    UIView *shopHeaderview = [[UIView alloc] init];
    
    shopHeaderview.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:shopHeaderview];
    
    [shopHeaderview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.offset(0);
        make.height.offset(180);
    }];
    
    _shopHeaderView = shopHeaderview;
    
    //添加平移
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
 
    
    //添加手势到控制器的view上
    [self.view addGestureRecognizer:pan];
}


//
- (void)panGesture:(UIPanGestureRecognizer *)pan{
    //获得平移的距离
    CGPoint p = [pan translationInView:pan.view];
    
    //头部视图的高度
    CGFloat shopHeaderViewUpdateHeight = _shopHeaderView.bounds.size.height;
    
    [_shopHeaderView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.offset(p.y + _shopHeaderView.bounds.size.height);
        
    //如果它当时的高度加上平移的值 <= 64 直接就让他变成到64
    if(p.y + shopHeaderViewUpdateHeight < 64){
    
        make.height.offset(64);
        
        //如果他当前的高度加上平移的值 >= 180 直接让它变成180
    }else if(p.y + shopHeaderViewUpdateHeight >= 180){
        
        make.height.offset(180);
    }else{
        //在大于64及小于180之间让它慢慢变化
        make.height.offset(p.y + shopHeaderViewUpdateHeight);
    }
    
        
    }];

    
    
    //恢复到初始值
    [pan setTranslation:CGPointZero inView:pan.view];
    
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
