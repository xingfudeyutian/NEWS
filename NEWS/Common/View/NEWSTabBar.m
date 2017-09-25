//
//  NEWSTabBar.m
//  NEWS
//
//  Created by hanyutong on 2017/9/15.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSTabBar.h"


@interface NEWSTabBar ()

@property (nonatomic, strong) UIButton * plusBtn;

@end


@implementation NEWSTabBar

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        UIButton *plusBtn = [[UIButton alloc] init];
        plusBtn.backgroundColor = [UIColor whiteColor];
        [plusBtn setImage:[UIImage imageNamed:@"tabbar_icon_more"] forState:UIControlStateNormal];
        [plusBtn addTarget:self action:@selector(plusClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:plusBtn];
        self.plusBtn = plusBtn;
    }
    return self;
}

- (void)plusClick
{
    if ([self.tabBarDelegate respondsToSelector:@selector(tabBarDidClickPlusButton:)])
    {
        [self.tabBarDelegate tabBarDidClickPlusButton:self];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.plusBtn.size = CGSizeMake(49, 49);
    self.plusBtn.center = CGPointMake(self.frame.size.width/2, 49/2-5.0);
    self.plusBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.plusBtn.layer.borderWidth = 0.5;
    self.plusBtn.layer.cornerRadius = 49/2;
    
    CGFloat tabbarButtonW = self.frame.size.width / 5;
    CGFloat tabbarButtonIndex = 0;
    for (UIView *childView in self.subviews)
    {
        if ([childView isKindOfClass:NSClassFromString(@"UITabBarButton")])
        {
            childView.left = tabbarButtonIndex * tabbarButtonW;
            childView.width = tabbarButtonW;
            
            tabbarButtonIndex++;
            if (tabbarButtonIndex == 2)
            {
                tabbarButtonIndex++;
            }
        }
    }
}


@end
