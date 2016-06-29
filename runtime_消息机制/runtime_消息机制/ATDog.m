//
//  ATDog.m
//  runtime_消息机制
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ATDog.h"

@implementation ATDog
- (void)run {
    NSLog(@"对象方法-run");
}

+ (void)run {
    NSLog(@"类方法-run");
}

- (void)eat:(NSString *)food {
    NSLog(@"带参数的实例方法-eat:%@",food);
}

- (void)eat:(NSString *)food others:(NSArray *)arr {
    NSLog(@"%@",food);
    for (id obj in arr) {
        NSLog(@"%@",obj);
    }
}
@end
