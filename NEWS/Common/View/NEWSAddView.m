//
//  NEWSAddView.m
//  NEWS
//
//  Created by hanyutong on 2017/9/15.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSAddView.h"


@interface NEWSAddView ()

@property (nonatomic, strong) UIButton * bgBtn;
@property (nonatomic, strong) UIView * bgView;
@property (nonatomic, strong) UIButton * delBtn;


@property (nonatomic, strong) NSArray * itemAry;

@end


@implementation NEWSAddView

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
    self.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.2];
    
    self.bgBtn = [[UIButton alloc] init];
    self.bgBtn.tag = 0;
    [self.bgBtn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.bgBtn];
    
    
    self.bgView = [[UIView alloc] init];
    self.bgView.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.bgView];
    
    
    
    self.delBtn = [[UIButton alloc] init];
    self.delBtn.tag = 0;
    [self.delBtn setBackgroundImage:[UIImage imageNamed:@"tt_titlebar_close_press"] forState:UIControlStateNormal];

    [self.delBtn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.delBtn];
    
    
    CGFloat width = (MAINSCREEN_WIDTH - (self.itemAry.count+1)*2*Mergin)/4;
    
    for (int i = 0; i< self.itemAry.count; i++)
    {
        UIView * itemV = [[UIView alloc] init];
        itemV.frame = CGRectMake(i*width+(i+1)*2*Mergin, Mergin, width, self.height - 80);
        [self.bgView addSubview:itemV];
        
        UIView * view = [[UIView alloc] init];
        view.frame = CGRectMake(0, 0, itemV.width, itemV.width);
        view.layer.borderColor = [UIColor lightGrayColor].CGColor;
        view.layer.borderWidth = 0.2f;
        view.layer.cornerRadius = itemV.width/2-5;
        [itemV addSubview:view];
        
        
        
        UIImageView * imageV = [[UIImageView alloc] init];
        imageV.frame = CGRectMake(5, 5, itemV.width-10, itemV.width-10);
        imageV.image = [UIImage imageNamed:self.itemAry[i][@"icon"]];
        [view addSubview:imageV];
        
        UILabel * label = [[UILabel alloc] init];
        label.font = [UIFont systemFontOfSize:14];
        label.frame = CGRectMake(0, itemV.width, itemV.width, 40);
        label.textAlignment = NSTextAlignmentCenter;
        label.text = self.itemAry[i][@"title"];
        [itemV addSubview:label];
    }
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.bgBtn.frame = self.frame;
    self.bgView.frame = CGRectMake(0, MAINSCREEN_HEIGHT*3/4, MAINSCREEN_WIDTH, MAINSCREEN_HEIGHT/4);
    self.delBtn.frame = CGRectMake(0, self.height-50, 30, 30);
    self.delBtn.centerX = self.bgView.centerX;
}

- (void)buttonAction:(UIButton *)button
{
    [self removeFromSuperview];
}


-(NSArray *)itemAry
{
    if (_itemAry == nil)
    {
        _itemAry = @[@{@"icon":@"toutiaoquan_release_text",@"title":@"文字"},
                     @{@"icon":@"toutiaoquan_release_image",@"title":@"图片"},
                     @{@"icon":@"toutiaoquan_release_video",@"title":@"视频"},
                     @{@"icon":@"toutiaoquan_release_video",@"title":@"提问"}];
    }
    return _itemAry;
}

@end
