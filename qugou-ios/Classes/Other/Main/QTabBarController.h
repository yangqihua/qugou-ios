//
//  QTabBarController.h
//  qugou-ios
//
//  Created by yangqihua on 2017/11/30.
//  Copyright © 2017年 yangqihua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QNavigationController.h"
#import "HomeViewController.h"
#import "TopViewController.h"
#import "ForumViewController.h"
#import "MeViewController.h"

@interface QTabBarController : UITabBarController{
    HomeViewController* _homeViewController;
    TopViewController* _topViewController;
    ForumViewController* _forumViewController;
    MeViewController* _meViewController;
}

@end
