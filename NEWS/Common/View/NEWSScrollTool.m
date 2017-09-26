//
//  NEWSScrollTool.m
//  NEWS
//
//  Created by hanyutong on 2017/9/13.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSScrollTool.h"
#import "NEWSCategoryModel.h"

@interface NEWSScrollTool ()

@property (nonatomic, weak) UIScrollView * scrollView;
@property (nonatomic, weak) UIButton * menuBtn;
@property (nonatomic, weak) UIView * lineV;
@property (nonatomic, weak) UIButton * currentBtn;

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
    [self addSubview:scrollView];
    
    UIButton * menuBtn = [[UIButton alloc] init];
    self.menuBtn = menuBtn;
    menuBtn.imageView.contentMode = UIViewContentModeScaleAspectFill;
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
    self.menuBtn.frame = CGRectMake(self.scrollView.frame.size.width, 0, self.height, self.height);
    self.lineV.frame = CGRectMake(0, CGRectGetMaxY(self.menuBtn.frame)-0.5, MAINSCREEN_WIDTH, 0.5);

}

-(void)setItemAry:(NSArray *)itemAry
{
    _itemAry = itemAry;
    self.scrollView.contentSize = CGSizeMake(itemAry.count*2*Mergin, self.height);
    int i = 0;
    for (NEWSCategoryModel * itemModel in itemAry)
    {
        UIButton * itemBtn = [[UIButton alloc] init];
        itemBtn.frame = CGRectMake(i* 2*Mergin, 0, 2.5*Mergin, self.height);
        itemBtn.tag = i;
        
        [itemBtn addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
        [itemBtn setTitle:itemModel.name forState:UIControlStateNormal];
        [itemBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        itemBtn.titleLabel.font = [UIFont systemFontOfSize:17];
        [self.scrollView addSubview:itemBtn];
        if (i == 0)
        {
            [itemBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            itemBtn.titleLabel.font = [UIFont systemFontOfSize:18];
            self.currentBtn = itemBtn;
        }
        i++;
    }

}

- (void)itemAction:(UIButton *)itemBtn
{
    if (itemBtn.tag != self.currentBtn.tag)
    {
        [itemBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        itemBtn.titleLabel.font = [UIFont systemFontOfSize:18];
        [self.currentBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.currentBtn.titleLabel.font = [UIFont systemFontOfSize:17];
        
        self.currentBtn = itemBtn;
    }
   
}


-(void)setIconImage:(NSString *)iconImage
{
    _iconImage = iconImage;
//    [UIImage imageNamed:@"add_channel_titlbar_follow"]
    [self.menuBtn setBackgroundImage:[UIImage imageNamed:iconImage] forState:UIControlStateNormal];
}

@end
