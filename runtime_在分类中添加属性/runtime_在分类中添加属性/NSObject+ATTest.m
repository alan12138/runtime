//
//  NSObject+ATTest.m
//  runtime_在分类中添加属性
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "NSObject+ATTest.h"

@implementation NSObject (ATTest)
NSString *_sex;
- (void)setSex:(NSString *)sex {
    _sex = sex;
}
- (NSString *)sex {
    return  _sex;
}
@end
