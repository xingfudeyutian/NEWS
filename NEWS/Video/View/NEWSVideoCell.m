//
//  NEWSVideoCell.m
//  NEWS
//
//  Created by hanyutong on 2017/9/15.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSVideoCell.h"

@implementation NEWSVideoCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubViews];
    }
    return self;
}

- (void)setupSubViews
{
    self.backgroundColor = [UIColor lightGrayColor];
}


@end
