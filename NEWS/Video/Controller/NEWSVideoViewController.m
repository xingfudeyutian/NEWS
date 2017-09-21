//
//  NEWSVideoViewController.m
//  NEWS
//
//  Created by hanyutong on 2017/9/12.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSVideoViewController.h"
#import "NEWSScrollTool.h"
#import "NEWSVideoCell.h"

#import "NEWSVideoViewController+NEWSNetWork.h"


@interface NEWSVideoViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>


@end

@implementation NEWSVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubViews];
    [self getVideoList];
}

- (void)setupSubViews
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationController.navigationBar.translucent = NO;
    NEWSScrollTool * scroll = [[NEWSScrollTool alloc] initWithFrame:CGRectMake(0, 0, MAINSCREEN_WIDTH, 44)];
    scroll.itemAry = @[@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技",@"科技"];
    [self.navigationController.navigationBar addSubview:scroll];
    
    //布局
    UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(MAINSCREEN_WIDTH, MAINSCREEN_HEIGHT/3);
    flowLayout.minimumLineSpacing = 5;
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    //视图
    UICollectionView * collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, MAINSCREEN_WIDTH, self.view.bounds.size.height-TabBarHeight-NavBarHeight) collectionViewLayout:flowLayout];
    self.collectionView = collectionView;
    collectionView.backgroundColor = [UIColor lightGrayColor];
    
    collectionView.showsVerticalScrollIndicator = NO;
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [collectionView registerClass:[NEWSVideoCell class] forCellWithReuseIdentifier:@"CELL"];
    
    [self.view addSubview:collectionView];
    
}

#pragma mark - UICollectionViewDelegate,UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.videoList.count;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NEWSVideoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
    cell.videoListData = self.videoList[indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSMutableArray *)videoList
{
    if (_videoList == nil)
    {
        _videoList = [NSMutableArray array];
    }
    return _videoList;
}


@end
