//
//  NEWSWaterMelonListData.h
//  NEWS
//
//  Created by hanyutong on 2017/9/21.
//  Copyright © 2017年 hanyutong. All rights reserved.
//

#import <Foundation/Foundation.h>

//
//
//@interface NEWSMediaInfo : NSObject
//
//@property (nonatomic, copy) NSString * user_id;
//@property (nonatomic, copy) NSString * avatar_url;
//@property (nonatomic, copy) NSString * media_id;
//@property (nonatomic, copy) NSString * name;
//@property (nonatomic) BOOL follow;
//
//@end

@interface NEWSUserInfo : NSObject

@property (nonatomic, copy) NSString * user_id;
@property (nonatomic, copy) NSString * avatar_url;
@property (nonatomic, copy) NSString * name;
@property (nonatomic)  BOOL  follow;

@end

@class NEWSVideoImage;
@interface  NEWSVideoInfo : NSObject

@property (nonatomic, strong) NEWSVideoImage * detail_video_large_image;
@end

@interface  NEWSVideoImage : NSObject

@property (nonatomic, copy) NSString * video_url;

@end
@interface NEWSWaterMelonListData : NSObject

@property (nonatomic, copy) NSString * title;
@property (nonatomic, strong) NEWSUserInfo * user_info;
@property (nonatomic, strong) NEWSVideoInfo * video_detail_info;
@property (nonatomic, copy) NSString * comment_count;

@end

@interface NEWSData  : NSObject

@property (nonatomic, copy) NSString * content;

@end

