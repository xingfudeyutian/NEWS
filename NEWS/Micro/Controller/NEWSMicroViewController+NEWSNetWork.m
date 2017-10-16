//
//  NEWSMicroViewController+NEWSNetWork.m
//  NEWS
//
//  Created by hanyutong on 2017/10/9.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSMicroViewController+NEWSNetWork.h"

@implementation NEWSMicroViewController (NEWSNetWork)

- (void)getMicroList
{
    [NEWSHttpManager get:MicroVideoList params:nil success:^(id responseObject) {
        
        
        
    } failure:^(NSError *error) {
        
    }];
}

@end
