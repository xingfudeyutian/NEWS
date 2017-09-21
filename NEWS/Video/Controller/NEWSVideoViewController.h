//
//  NEWSVideoViewController.h
//  NEWS
//
//  Created by hanyutong on 2017/9/12.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NEWSWaterMelonListData.h"

@interface NEWSVideoViewController : UIViewController

@property (nonatomic, strong) UICollectionView * collectionView;
@property (nonatomic, strong) NSMutableArray * videoList;

@end
