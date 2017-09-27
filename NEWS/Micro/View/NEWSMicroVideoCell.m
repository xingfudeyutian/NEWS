//
//  NEWSMicroVideoCell.m
//  NEWS
//
//  Created by hanyutong on 2017/9/15.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSMicroVideoCell.h"


@interface NEWSMicroVideoCell ()

@property (nonatomic,strong)UIImageView * bgImageV;
@property (nonatomic, strong) UILabel * titleL;
@property (nonatomic, strong) UIImageView * iconImageV;
@property (nonatomic, strong) UILabel * countL;
@property (nonatomic, strong) UILabel * likeL;

@end




@implementation NEWSMicroVideoCell

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
    
    self.bgImageV = [[UIImageView alloc] init];
    [self.contentView addSubview:self.bgImageV];
    
    self.titleL = [[UILabel alloc] init];
    self.titleL.numberOfLines = 0;
    self.titleL.text = @"哈哈哈哈哈哈哈哈";
    self.titleL.textColor = [UIColor whiteColor];
    self.titleL.font = [UIFont systemFontOfSize:20];
    [self.contentView addSubview:self.titleL];
    
    self.iconImageV = [[UIImageView alloc] init];
    self.iconImageV.contentMode = UIViewContentModeScaleAspectFit;
    self.iconImageV.image = [UIImage imageNamed:@"chatroom_icon_video_match"];
    [self.contentView addSubview:self.iconImageV];
    
    
    self.countL = [[UILabel alloc] init];
    self.countL.text = @"2万次播放";
    self.countL.textColor = [UIColor whiteColor];
    self.countL.font = [UIFont systemFontOfSize:10];
    [self.countL sizeToFit];
    [self.contentView addSubview:self.countL];
    
    self.likeL = [[UILabel alloc] init];
    self.likeL.text = @"3456赞";
    self.likeL.font = [UIFont systemFontOfSize:10];
    self.likeL.textColor = [UIColor whiteColor];
    [self.likeL sizeToFit];
    [self.contentView addSubview:self.likeL];
    
    
    
    
    
    
    
    
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.bgImageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
    
    [self.titleL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.iconImageV.mas_top).offset(-Mergin/2);
        make.left.equalTo(self.contentView.mas_left).offset(Mergin/2);
        make.right.equalTo(self.contentView.mas_right).offset(-Mergin/2);
        make.height.mas_greaterThanOrEqualTo(Mergin);
    }];
    
    [self.iconImageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left).offset(Mergin/2);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-Mergin/2);
        make.width.height.mas_equalTo(Mergin/2);
    }];
    
    [self.countL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageV.mas_right).offset(Mergin/2);
        make.top.bottom.equalTo(self.iconImageV);
    }];
    
    [self.likeL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView.mas_right).offset(-Mergin/2);
        make.top.bottom.equalTo(self.iconImageV);
    }];
}



@end
