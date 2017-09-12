//
//  NEWSHomeViewController.m
//  NEWS
//
//  Created by hanyutong on 2017/9/12.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSHomeViewController.h"

@interface NEWSHomeViewController ()

@end

@implementation NEWSHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubViews];
    
}


- (void)setupSubViews
{
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
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
