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
 
    self.navigationController.navigationBar.translucent = NO;
    NSString * name = [NSString stringWithFormat:@"search_background_%.f_logo",[UIScreen mainScreen].bounds.size.width];
    UIImage * image = [UIImage imageNamed:name];
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault ];

    
    NEWSScrollTool * scroll = [[NEWSScrollTool alloc] initWithFrame:CGRectMake(0, 0, 375, 44)];
    [self.view addSubview:scroll];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
