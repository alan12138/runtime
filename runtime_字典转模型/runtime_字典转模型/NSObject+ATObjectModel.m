//
//  NSObject+ATObjectModel.m
//  runtime_字典转模型
//
//  Created by lg on 16/6/30.
//  Copyright © 2016年 at. All rights reserved.
//

#import "NSObject+ATObjectModel.h"
#import <objc/message.h>

@implementation NSObject (ATObjectModel)
+ (__kindof NSObject *)objectModelWithDict:(NSDictionary *)dict {
    //创建对应模型类
    id obj = [[self alloc] init];
    
    //成员属性数量
    unsigned int count = 0;
    //获取模型类属性列表数组
    Ivar *ivarList = class_copyIvarList(self, &count);
    //遍历所有成员属性
    for (int i = 0; i < count; i++) {
        //获取成员属性(Ivar)
        Ivar ivar = ivarList[i];
        //获取成员属性名
        NSString *propertyName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        //去掉proprtyName前面的下划线
        NSString *property = [propertyName substringFromIndex:1];
        //获取成员属性类型
        //        NSString *propertyType = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        //获取value
        id value = nil;
        if ([property isEqualToString:@"ID"]) {
            value = dict[@"id"];
        } else {
            value = dict[property];
        }
        
        if (value) {
            //KVC赋值，不能传空
            [obj setValue:value forKey:property];
        }
        
    }
    return obj;
}
@end
