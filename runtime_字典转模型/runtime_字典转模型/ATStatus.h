//
//  ATStatus.h
//  runtime_字典转模型
//
//  Created by lg on 16/6/30.
//  Copyright © 2016年 at. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+ATObjectModel.h"

@class ATUser;
@interface ATStatus : NSObject<ObjectModelDelegate>

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *source;

@property (nonatomic, assign) NSUInteger reposts_count;

@property (nonatomic, copy) NSArray *pic_urls;

@property (nonatomic, copy) NSString *created_at;

@property (nonatomic, assign) NSUInteger attitudes_count;

@property (nonatomic, copy) NSString *idstr;

@property (nonatomic, copy) NSString *text;

@property (nonatomic, assign) NSUInteger comments_count;

//注意改类型的时候看看策略是否对应
@property (nonatomic, strong) ATUser *user;

@end
