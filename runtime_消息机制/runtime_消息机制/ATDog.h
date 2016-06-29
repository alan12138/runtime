//
//  ATDog.h
//  runtime_消息机制
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ATDog : NSObject
- (void)run; //对象方法

+ (void)run; // 类方法

- (void)eat:(NSString *)food; //带参数的实例方法

- (void)eat:(NSString *)food others:(NSArray *)arr;//参数太多又要用performSelector的时候，把参数装到数组或字典中
@end
