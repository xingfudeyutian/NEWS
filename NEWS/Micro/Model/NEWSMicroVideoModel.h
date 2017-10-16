//
//  NEWSMicroVideoModel.h
//  NEWS
//
//  Created by hanyutong on 2017/9/27.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NEWSThumbImage : NSObject

@property (nonatomic, copy) NSString * url;

@end

@interface NEWSAction : NSObject

@property (nonatomic, copy) NSString * play_count;
@property (nonatomic, copy) NSString * digg_count;

@end

@interface NEWSRawData : NSObject

@property (nonatomic, copy) NSString * title;
@property (nonatomic, strong)NSArray < NEWSThumbImage *> *  thumb_image_list;

@end


@interface NEWSMicroVideoModel : NSObject

@property (nonatomic, strong)NEWSRawData * raw_data;




@end




