//
//  NEWSVideoViewController.h
//  NEWS
//
//  Created by hanyutong on 2017/9/12.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NEWSWaterMelonListData.h"
#import "NEWSCategoryModel.h"
#import "NEWSScrollTool.h"

@interface NEWSVideoViewController : UIViewController

@property (nonatomic, strong) UICollectionView * collectionView;
@property (nonatomic, strong) NEWSScrollTool * scroll;
@property (nonatomic, strong) NSMutableArray * videoList;
@property (nonatomic, strong) NSArray * categoryList;

@end
