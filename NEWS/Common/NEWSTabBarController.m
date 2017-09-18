//
//  NEWSTabBarController.m
//  NEWS
//
//  Created by hanyutong on 2017/9/12.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSTabBarController.h"
#import "NEWSTabBar.h"
#import "NEWSMeViewController.h"
#import "NEWSMicroViewController.h"
#import "NEWSVideoViewController.h"
#import "NEWSHomeViewController.h"

#import "NEWSAddView.h"

@interface NEWSTabBarController ()<NEWSTabBarDelegate>

@end

@implementation NEWSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NEWSTabBar * tabBar = [[NEWSTabBar alloc] init];
    tabBar.tabBarDelegate = self;
    [self setValue:tabBar forKey:@"tabBar"];

    
    
    [self addChildViewControllers];

}
- (void)addChildViewControllers
{
    /** 首页 */
    NEWSHomeViewController *homeVC = [[NEWSHomeViewController alloc] init];
    UINavigationController *homeN = [[UINavigationController alloc] initWithRootViewController:homeVC];
    homeVC.view.backgroundColor = [UIColor whiteColor];
    [self setupOneChildViewController:homeN Title:@"首页" normalImg:[[UIImage imageNamed:@"home_tabbar"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selImg:[[UIImage imageNamed:@"home_tabbar_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    /** 西瓜视频 */
    NEWSVideoViewController *videoVC = [[NEWSVideoViewController alloc] init];
    UINavigationController *videoN = [[UINavigationController alloc] initWithRootViewController:videoVC];
    videoVC.view.backgroundColor = [UIColor whiteColor];
    [self setupOneChildViewController:videoN Title:@"西瓜视频" normalImg:[[UIImage imageNamed:@"video_tabbar"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selImg:[[UIImage imageNamed:@"video_tabbar_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    /** 微头条 */
    NEWSMicroViewController * microVC = [[NEWSMicroViewController alloc] init];
    UINavigationController *microN = [[UINavigationController alloc] initWithRootViewController:microVC];
    microVC.view.backgroundColor = [UIColor whiteColor];
    [self setupOneChildViewController:microN Title:@"小视频" normalImg:[[UIImage imageNamed:@"huoshan_tabbar"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selImg:[[UIImage imageNamed:@"huoshan_tabbar_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    /** 我的 */
    NEWSMeViewController * meVC = [[NEWSMeViewController alloc] init];
    meVC.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *meN = [[UINavigationController alloc] initWithRootViewController:meVC];
    [self setupOneChildViewController:meN Title:@"我的" normalImg:[[UIImage imageNamed:@"mine_tabbar"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selImg:[[UIImage imageNamed:@"mine_tabbar_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
}



- (void)setupOneChildViewController:(UIViewController *)childVc Title:(NSString *)title normalImg:(UIImage *)normalImg selImg:(UIImage *)selImg
{

    [self addChildViewController:childVc];
 
    [childVc.tabBarItem setTitleTextAttributes:@{
                                                 NSForegroundColorAttributeName : [UIColor redColor]
                                                 } forState:UIControlStateSelected];
    [childVc.tabBarItem setTitleTextAttributes:@{
                                                 NSForegroundColorAttributeName : [UIColor blackColor]
                                                 } forState:UIControlStateNormal];
    childVc.title = title;
    childVc.tabBarItem.image = normalImg;
    childVc.tabBarItem.selectedImage = selImg;
}

#pragma mark - NEWSTabBarDelegate

-(void)tabBarDidClickPlusButton:(NEWSTabBar *)tabBar
{
    
    NEWSAddView * addView = [[NEWSAddView alloc] initWithFrame:CGRectMake(0, 0, MAINSCREEN_WIDTH, MAINSCREEN_HEIGHT)];
    [[UIApplication sharedApplication].keyWindow addSubview:addView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];


}



@end
