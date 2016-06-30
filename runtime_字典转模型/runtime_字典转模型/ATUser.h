//
//  ATUser.h
//  runtime_字典转模型
//
//  Created by lg on 16/6/30.
//  Copyright © 2016年 at. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ATUser : NSObject
@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *profile_image_url;

@property (nonatomic, assign) BOOL vip;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSUInteger mbrank;

@property (nonatomic, assign) NSUInteger mbtype;

@end
