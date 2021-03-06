//
//  QTabBarController.m
//  qugou-ios
//
//  Created by yangqihua on 2017/11/30.
//  Copyright © 2017年 yangqihua. All rights reserved.
//

#import "QTabBarController.h"

@interface QTabBarController ()

@end

@implementation QTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTabBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initTabBar{
    _homeViewController = [[HomeViewController alloc]init];
    [self addChildViewController:_homeViewController withImage:[UIImage imageNamed:@"home"] selectedImage:[UIImage imageNamed:@"home"] withTitle:@"首页"];
    
    _topViewController = [[TopViewController alloc]init];
    [self addChildViewController:_topViewController withImage:[UIImage imageNamed:@"recommend"] selectedImage:[UIImage imageNamed:@"recommend"] withTitle:@"榜单"];
    
    _forumViewController = [[ForumViewController alloc]init];
    [self addChildViewController:_forumViewController withImage:[UIImage imageNamed:@"top"] selectedImage:[UIImage imageNamed:@"top"] withTitle:@"动态"];
    
    _meViewController = [[MeViewController alloc]init];
    [self addChildViewController:_meViewController withImage:[UIImage imageNamed:@"me"] selectedImage:[UIImage imageNamed:@"me"] withTitle:@"我的"];
}

- (void)addChildViewController:(UIViewController *)controller withImage:(UIImage *)image selectedImage:(UIImage *)selectedImage withTitle:(NSString *)title{
    self.tabBarController.tabBar.translucent = false;
    QNavigationController *nav = [[QNavigationController alloc] initWithRootViewController:controller];
    [nav.tabBarItem setImage:image];
    [nav.tabBarItem setSelectedImage: [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    //同时设置了tabbar 和 navigationBar的title
    controller.title = title;
    [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    nav.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -3);
    // 将navigation添加到tabbar中来
    [self addChildViewController:nav];
}




@end




