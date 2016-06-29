//
//  NSObject+ATDog.m
//  runtime_在分类中添加属性
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "NSObject+ATDog.h"
#import <objc/message.h>

@implementation NSObject (ATDog)
- (void)setName:(NSString *)name {
    //设置关联属性
    /* 参数说明
     object:添加属性的对象
     key：属性名
     value：属性关联的值
     policy:属性策略，就是strong,copy那些东西
     */
    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)name {
    //获取关联属性
    /* 参数说明
     object:获取属性的对象
     key：属性名
    */
    return objc_getAssociatedObject(self, @"name");
}
@end
