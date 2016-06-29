//
//  ATStatus.m
//  直接用KVC做字典转模型
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ATStatus.h"

@implementation ATStatus
//转模型实现
+ (ATStatus *)statusWithDict:(NSDictionary *)dict {
    ATStatus *status = [[self alloc] init];
    //KVC
    [status setValuesForKeysWithDictionary:dict];
    return  status;
}
//解决KVC对应属性崩溃找不到崩溃
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    //key:没有找到的key
    //value:没有找到的key对应的value
    
    //找不到id,把id的值赋给ID
    if ([key isEqualToString:@"id"]) {
        _ID = [value integerValue];
    }
    //打印出没找到的key
    NSLog(@"unFind: key:%@ value:%@", key, value);
}
@end
