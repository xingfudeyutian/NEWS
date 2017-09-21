//
//  NEWSVideoViewController+NEWSNetWork.m
//  NEWS
//
//  Created by hanyutong on 2017/9/21.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSVideoViewController+NEWSNetWork.h"

@implementation NEWSVideoViewController (NEWSNetWork)

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
