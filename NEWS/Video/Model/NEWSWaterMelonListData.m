//
//  NEWSWaterMelonListData.m
//  NEWS
//
//  Created by hanyutong on 2017/9/21.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import "NEWSWaterMelonListData.h"


@implementation NEWSUserInfo



@end

@implementation NEWSVideoInfo


+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{@"detail_video_large_image" : @"NEWSVideoImage",};
}

@end

@implementation NEWSVideoImage

+ (NSDictionary *)modelCustomPropertyMapper
{
    return @{@"video_url" : @"url"};
}


@end

@implementation NEWSWaterMelonListData


+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{@"user_info" : @"NEWSUserInfo",
             @"video_detail_info" : @"NEWSVideoInfo"};
}




@end



@implementation NEWSData


@end
