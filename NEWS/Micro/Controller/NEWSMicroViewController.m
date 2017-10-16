//
//  NEWSMicroViewController.m
//  NEWS
//
//  Created by hanyutong on 2017/9/12.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSMicroViewController.h"
#import "NEWSMicroVideoCell.h"
#import "NEWSMicroViewController+NEWSNetWork.h"

@interface NEWSMicroViewController () <UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView * collectionView;


@end

@implementation NEWSMicroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:YES];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setupSubViews];
    [self getMicroList];
}

- (void)setupSubViews
{
    
    //布局
    UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(MAINSCREEN_WIDTH/2-1, (self.view.bounds.size.height-TabBarHeight)/2-30);
    flowLayout.minimumLineSpacing = 1;
    flowLayout.minimumInteritemSpacing = 1;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    //视图
    UICollectionView * collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 20, MAINSCREEN_WIDTH, self.view.bounds.size.height-TabBarHeight) collectionViewLayout:flowLayout];
    self.collectionView = collectionView;
    collectionView.backgroundColor = [UIColor whiteColor];

    collectionView.showsVerticalScrollIndicator = NO;
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [collectionView registerClass:[NEWSMicroVideoCell class] forCellWithReuseIdentifier:@"CELL"];
    
    [self.view addSubview:collectionView];
    
}

#pragma mark - UICollectionViewDelegate,UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
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
    NEWSMicroVideoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];

    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
