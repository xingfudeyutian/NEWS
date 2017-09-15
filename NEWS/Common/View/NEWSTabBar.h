//
//  NEWSTabBar.h
//  NEWS
//
//  Created by hanyutong on 2017/9/15.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NEWSTabBar;

@protocol NEWSTabBarDelegate <UITabBarDelegate>

- (void)tabBarDidClickPlusButton:(NEWSTabBar *)tabBar;

@end


@interface NEWSTabBar : UITabBar

@property (nonatomic, weak) id <NEWSTabBarDelegate> tabBarDelegate;

@end


