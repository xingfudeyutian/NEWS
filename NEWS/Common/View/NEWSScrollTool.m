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
@property (nonatomic, weak) UIView * lineV;

@end

@implementation NEWSScrollTool


- (instancetype)initWithFrame:(CGRect)frame
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
    scrollView.bounces = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    [self addSubview:scrollView];
    
    UIButton * menuBtn = [[UIButton alloc] init];
    menuBtn.backgroundColor = [UIColor redColor];
    self.menuBtn = menuBtn;
    [self addSubview:menuBtn];
    
    UIView * lineV = [[UIView alloc] init];
    self.lineV = lineV;
    lineV.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:lineV];

}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.scrollView.frame = CGRectMake(0, 0, MAINSCREEN_WIDTH - 2*Mergin, 30);
    self.menuBtn.frame = CGRectMake(MAINSCREEN_WIDTH - 2*Mergin, 0, 2*Mergin, 30);
    self.lineV.frame = CGRectMake(0, CGRectGetMaxY(self.menuBtn.frame)-0.5, MAINSCREEN_WIDTH, 0.5);

    static NSInteger i = 0;
    for (UIButton *itemBtn in self.scrollView.subviews)
    {
        itemBtn.frame = CGRectMake(i*2*Mergin, 0, 2*Mergin, 30);
        i++;
    }
    self.scrollView.contentSize = CGSizeMake(self.scrollView.subviews.count*2*Mergin, 0);
}

- (void)setItemAry:(NSArray *)itemAry
{
    _itemAry = itemAry;
    
    for (NSString * item in itemAry)
    {
        UIButton * itemBtn = [[UIButton alloc] init];
        [itemBtn setTitle:item forState:UIControlStateNormal];
        [itemBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        itemBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.scrollView addSubview:itemBtn];
    }
}



@end
