//
//  NEWSVideoCell.m
//  NEWS
//
//  Created by hanyutong on 2017/9/15.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSVideoCell.h"

@interface NEWSVideoCell () <UIWebViewDelegate>

@property (nonatomic, strong) UIImageView * bgImageV;
@property (nonatomic, strong) UIWebView * contentWeb;

@property (nonatomic, strong) UILabel * titleL;
@property (nonatomic, strong) UILabel * countL;
@property (nonatomic, strong) UIButton * openBtn;
@property (nonatomic, strong) UILabel * timeL;

@property (nonatomic, strong) UIView * toolBgV;
//@property (nonatomic, strong) UIButton * avaterBtn;
@property (nonatomic, strong) UIImageView * avater;
@property (nonatomic, strong) UILabel * auther;

@property (nonatomic, strong) UIButton * followBtn;
@property (nonatomic, strong) UIButton * commentBtn;
@property (nonatomic, strong) UIButton * moreBtn;

@end

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
    self.bgImageV = [[UIImageView alloc] init];
    self.bgImageV.image = [UIImage imageNamed:@"wallpaper_profile"];
    [self.contentView addSubview:self.bgImageV];
    
    self.contentWeb = [[UIWebView alloc] init];
    self.contentWeb.backgroundColor = [UIColor clearColor];
    [self.contentWeb setOpaque:NO];
    self.contentWeb.scrollView.scrollEnabled = NO;
    [self.contentView addSubview:self.contentWeb];
    
    self.toolBgV = [[UIView alloc] init];
    self.toolBgV.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.toolBgV];
    
    self.titleL = [[UILabel alloc] init];
    self.titleL.text = @"街上被雷劈出一个黑洞，里面爬出巨型怪物，场面一度混乱失控";
    self.titleL.textColor = [UIColor whiteColor];
    self.titleL.numberOfLines = 2;
    self.titleL.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:self.titleL];
    
    self.countL = [[UILabel alloc] init];
    self.countL.text = @"16万次播放";
    [self.countL sizeToFit];
    self.countL.textColor = [UIColor whiteColor];
    self.countL.font = [UIFont systemFontOfSize:10];
    [self.contentView addSubview:self.countL];
    
    self.timeL = [[UILabel alloc] init];
    self.timeL.font = [UIFont systemFontOfSize:10];
    self.timeL.text = @"04:34";
    self.timeL.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.timeL];

    
    self.openBtn = [[UIButton alloc] init];
    [self.openBtn setBackgroundImage:[UIImage imageNamed:@"video_play_icon"] forState:UIControlStateNormal];
    [self.contentView addSubview:self.openBtn];
    
    
    
//    self.avaterBtn = [[UIButton alloc] init];
//    [self.avaterBtn.titleLabel sizeToFit];
//     self.avaterBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
//    self.avaterBtn.imageView.frame = CGRectMake(0, 0, Mergin, Mergin);
//    self.avaterBtn.imageView.backgroundColor = [UIColor lightGrayColor];
//    self.avaterBtn.imageView.layer.cornerRadius = Mergin;
//    self.avaterBtn.imageView.clipsToBounds = YES;
//    [self.avaterBtn setImage:[UIImage imageNamed:@"comment"] forState:UIControlStateNormal];
//    [self.avaterBtn setTitle:@"谎言小白" forState:UIControlStateNormal];
//    self.avaterBtn.titleLabel.font = [UIFont systemFontOfSize:10];
//    [self.avaterBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [self.toolBgV addSubview:self.avaterBtn];
    
    
    self.avater = [[UIImageView alloc] init];
    self.avater.clipsToBounds = YES;
    self.avater.layer.cornerRadius = Mergin/2;
    [self.toolBgV addSubview:self.avater];
    
    self.auther = [[UILabel alloc] init];
    self.auther.font = [UIFont systemFontOfSize:10];
    self.auther.textColor = [UIColor blackColor];
    [self.auther sizeToFit];
    [self.toolBgV addSubview:self.auther];
    
    
    
    self.followBtn = [[UIButton alloc] init];
    [self.followBtn setImage:[UIImage imageNamed:@"add_channel_titlbar_follow"] forState:UIControlStateNormal];
    [self.followBtn setTitle:@"关注" forState:UIControlStateNormal];
    self.followBtn.titleLabel.font = [UIFont systemFontOfSize:10];
    [self.followBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.toolBgV addSubview:self.followBtn];
    
    
    self.commentBtn = [[UIButton alloc] init];
    [self.commentBtn setImage:[UIImage imageNamed:@"comment"] forState:UIControlStateNormal];
    [self.commentBtn setTitle:@"227" forState:UIControlStateNormal];
    [self.commentBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.commentBtn.titleLabel.font = [UIFont systemFontOfSize:10];
    [self.toolBgV addSubview:self.commentBtn];
    
    self.moreBtn = [[UIButton alloc] init];
    [self.moreBtn setImage:[UIImage imageNamed:@"More"] forState:UIControlStateNormal];
    [self.toolBgV addSubview:self.moreBtn];
    
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.bgImageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self.contentView);
        make.bottom.equalTo(self.toolBgV.mas_top);
    }];
    
    [self.contentWeb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.bgImageV);
    }];
    
    [self.toolBgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.contentView);
        make.height.mas_equalTo(2*Mergin);
        make.bottom.equalTo(self.mas_bottom);
    }];
    
    [self.titleL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(Mergin/2);
        make.left.equalTo(self.contentView).offset(Mergin);
        make.right.equalTo(self.contentView).offset(-Mergin);
        make.height.mas_equalTo(2*Mergin);
    }];
    
    [self.countL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.titleL.mas_left);
        make.top.equalTo(self.titleL.mas_bottom);
    }];
    
    [self.timeL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView).offset(-Mergin);
        make.bottom.equalTo(self.bgImageV.mas_bottom).offset(-Mergin/2);
        make.height.mas_equalTo(Mergin/2);
    }];
    
    [self.openBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.bgImageV.mas_centerX);
        make.centerY.equalTo(self.bgImageV.mas_centerY);
        make.width.height.mas_equalTo(2*Mergin);
    }];
    
//    [self.avaterBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.toolBgV.mas_left).offset(Mergin);
//        make.top.bottom.equalTo(self.moreBtn);
//        make.width.mas_equalTo(3*Mergin);
//    }];
    
    [self.avater mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.toolBgV.mas_left).offset(Mergin);
        make.top.bottom.equalTo(self.moreBtn);
        make.width.height.mas_equalTo(Mergin);
    }];
    
    [self.auther mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.avater.mas_right).offset(Mergin);
        make.top.bottom.equalTo(self.moreBtn);
    }];
    
    [self.moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.toolBgV.mas_right).offset(-Mergin);
        make.bottom.equalTo(self.toolBgV).offset(-Mergin/2);
        make.top.equalTo(self.toolBgV).offset(Mergin/2);
        make.width.mas_equalTo(Mergin);
    }];
    
    [self.commentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.moreBtn.mas_left).offset(-Mergin/2);
        make.top.bottom.equalTo(self.moreBtn);
        make.width.mas_equalTo(2.5*Mergin);
    }];
    
    [self.followBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.commentBtn.mas_left).offset(-Mergin/2);
        make.top.bottom.equalTo(self.moreBtn);
        make.width.mas_equalTo(2.5*Mergin);
    }];
}

-(void)setVideoListData:(NEWSWaterMelonListData *)videoListData
{
    _videoListData = videoListData;
    
    self.titleL.text = videoListData.title;
    [self.bgImageV setImageWithURL:[NSURL URLWithString:videoListData.video_detail_info.detail_video_large_image.video_url] placeholder:[UIImage imageNamed:@"wallpaper_profile"]];
    [self.avater setImageWithURL:[NSURL URLWithString:videoListData.user_info.avatar_url] placeholder:nil];
    self.auther.text = videoListData.user_info.name;
    
    
}

@end
