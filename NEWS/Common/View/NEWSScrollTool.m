//
//  NEWSScrollTool.m
//  NEWS
//
//  Created by hanyutong on 2017/9/13.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSScrollTool.h"


@interface NEWSScrollTool ()

@property (nonatomic, weak) UIScrollView * scrollView;
@property (nonatomic, weak) UIButton * menuBtn;

@end

@implementation NEWSScrollTool


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setupSubViews];
    }
    return self;
}


- (void)setupSubViews
{
    UIScrollView * scrollView = [[UIScrollView alloc] init];
    self.scrollView = scrollView;
    scrollView.backgroundColor = [UIColor greenColor];
    [self addSubview:scrollView];
    
    UIButton * menuBtn = [[UIButton alloc] init];
    self.menuBtn = menuBtn;
    menuBtn.backgroundColor = [UIColor yellowColor];
    [self addSubview:menuBtn];
    
    
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.scrollView.frame = CGRectMake(0, 0, 300, 44);
    self.menuBtn.frame = CGRectMake(self.scrollView.frame.size.width, 0, 44, 44);
}



@end
