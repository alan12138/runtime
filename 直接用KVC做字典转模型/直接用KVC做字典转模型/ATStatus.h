//
//  ATStatus.h
//  直接用KVC做字典转模型
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ATStatus : NSObject
@property (nonatomic, copy) NSString *source;

@property (nonatomic, assign) NSUInteger reposts_count;

@property (nonatomic, assign) NSUInteger ID;

@property (nonatomic, copy) NSString *created_at;

@property (nonatomic, copy) NSArray *pic_urls;

@property (nonatomic, assign) NSUInteger attitudes_count;

@property (nonatomic, copy) NSString *idstr;

@property (nonatomic, copy) NSString *text;

@property (nonatomic, assign) NSUInteger comments_count;

@property (nonatomic, copy) NSDictionary *user;

@property (nonatomic, copy) NSDictionary *retweeted_status;

+ (__kindof ATStatus *)statusWithDict:(NSDictionary *)dict;
@end
