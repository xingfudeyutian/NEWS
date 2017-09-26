//
//  NEWSVideoViewController+NEWSNetWork.m
//  NEWS
//
//  Created by hanyutong on 2017/9/21.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSVideoViewController+NEWSNetWork.h"

@implementation NEWSVideoViewController (NEWSNetWork)


-(void)getCategoryList
{
    [NEWSHttpManager get:CategoryList params:nil success:^(id responseObject) {
        if ([responseObject[@"message"] isEqualToString:@"success"])
        {
            self.categoryList = [NSArray modelArrayWithClass:[NEWSCategoryModel class] json:responseObject[@"data"]];
            NEWSCategoryModel * model = [[NEWSCategoryModel alloc] init];
            model.name = @"推荐";
            NSMutableArray * modelAry = [NSMutableArray array];
            [modelAry addObject:model];
            [modelAry addObjectsFromArray:self.categoryList];
            self.scroll.itemAry = (NSArray *)modelAry;
        }
    } failure:^(NSError *error) {
        
    }];
}


-(void)getVideoList
{
    [NEWSHttpManager get:WaterMelonVideoList params:nil success:^(id responseObject) {
        
        NSLog(@"%@",responseObject);
        NSArray * array = responseObject[@"data"];
        
        for (NSDictionary * dic in array)
        {
            NSData *jsonData = [dic[@"content"] dataUsingEncoding:NSUTF8StringEncoding];
            
            NSError *err;
            
            NSDictionary * contentDic = [NSJSONSerialization JSONObjectWithData:jsonData
                                 
                                                                options:NSJSONReadingMutableContainers  
                                 
                                                                  error:&err];
 
           NEWSWaterMelonListData * model =  [NEWSWaterMelonListData modelWithDictionary:contentDic];
            [self.videoList addObject:model];
    
        }
        
        
        

        
        
        [self.collectionView reloadData];
        
    } failure:^(NSError *error) {
        
    }];
}

@end
