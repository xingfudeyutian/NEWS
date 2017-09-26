//
//  NEWSCategoryModel.h
//  NEWS
//
//  Created by hanyutong on 2017/9/25.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NEWSCategoryModel : NSObject

@property (nonatomic, copy) NSString * category;
@property (nonatomic, copy) NSString * name;
@property (nonatomic, assign) NSInteger flags;
@property (nonatomic, assign) NSInteger tip_new;
@property (nonatomic, assign) NSInteger type;

@end
