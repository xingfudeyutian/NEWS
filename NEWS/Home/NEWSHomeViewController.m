//
//  NEWSHomeViewController.m
//  NEWS
//
//  Created by hanyutong on 2017/9/12.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSHomeViewController.h"
#import "NEWSScrollTool.h"

@interface NEWSHomeViewController ()

@end

@implementation NEWSHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubViews];
}


- (void)setupSubViews
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationController.navigationBar.translucent = NO;
    NSString * name = [NSString stringWithFormat:@"search_background_%.f_logo",[UIScreen mainScreen].bounds.size.width];
    UIImage * image = [UIImage imageNamed:name];
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault ];
 
    NEWSScrollTool * scroll = [[NEWSScrollTool alloc] initWithFrame:CGRectMake(0, 0, MAINSCREEN_WIDTH, 30)];
//    scroll.itemAry = @[@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技"];
    scroll.iconImage = @"add_channel_titlbar_follow";
    [self.view addSubview:scroll];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
