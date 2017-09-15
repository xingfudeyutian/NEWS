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
    scrollView.alwaysBounceVertical = NO;
    scrollView.alwaysBounceHorizontal = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
//    scrollView.backgroundColor = [UIColor greenColor];
    [self addSubview:scrollView];
    
    UIButton * menuBtn = [[UIButton alloc] init];
    self.menuBtn = menuBtn;
    menuBtn.imageView.contentMode = UIViewContentModeScaleToFill;
    [menuBtn setBackgroundImage:[UIImage imageNamed:@"add_channel_titlbar_follow"] forState:UIControlStateNormal];
//    menuBtn.backgroundColor = [UIColor yellowColor];
    [self addSubview:menuBtn];
    
    UIView * lineV = [[UIView alloc] init];
    self.lineV = lineV;
    lineV.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:lineV];

}


-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.scrollView.frame = CGRectMake(0, 0, MAINSCREEN_WIDTH - 2* Mergin, self.height);
    NSLog(@"%f",self.scrollView.frame.size.height);
    self.menuBtn.frame = CGRectMake(self.scrollView.frame.size.width, 0, self.height, self.height);
    self.lineV.frame = CGRectMake(0, CGRectGetMaxY(self.menuBtn.frame)-0.5, MAINSCREEN_WIDTH, 0.5);

}

-(void)setItemAry:(NSArray *)itemAry
{
    _itemAry = itemAry;

    self.scrollView.contentSize = CGSizeMake(itemAry.count*2*Mergin, self.height);
    NSLog(@"%f %F",self.scrollView.contentSize.width,self.scrollView.contentSize.height);
    int i = 0;
    for (NSString * item in itemAry)
    {
        UIButton * itemBtn = [[UIButton alloc] init];
        itemBtn.frame = CGRectMake(i* 2*Mergin, 0, 2*Mergin, self.height);
        [itemBtn setTitle:item forState:UIControlStateNormal];
        [itemBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        itemBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        [self.scrollView addSubview:itemBtn];
        i++;
    }
}



@end
