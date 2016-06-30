//
//  ATStatus.h
//  runtime_字典转模型
//
//  Created by lg on 16/6/30.
//  Copyright © 2016年 at. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ATStatus : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *source;

@property (nonatomic, assign) NSUInteger reposts_count;

@property (nonatomic, copy) NSArray *pic_urls;

@property (nonatomic, copy) NSString *created_at;

@property (nonatomic, assign) NSUInteger attitudes_count;

@property (nonatomic, copy) NSString *idstr;

@property (nonatomic, copy) NSString *text;

@property (nonatomic, assign) NSUInteger comments_count;

@property (nonatomic, copy) NSDictionary *user;

@end
