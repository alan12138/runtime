//
//  NSObject+ATArchiver.m
//  runtime_归档解档
//
//  Created by lg on 16/7/2.
//  Copyright © 2016年 at. All rights reserved.
//

#import "NSObject+ATArchiver.h"
#import <objc/message.h>

@implementation NSObject (ATArchiver)
- (NSArray *)ignorePropertyNames {
    return nil;
}
- (void)encode:(NSCoder *)encoder {
    unsigned int count = 0;
    Ivar *ivarList = class_copyIvarList([self class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivarList[i];
        NSString *propertyName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        propertyName = [propertyName substringFromIndex:1];
        
        if ([self respondsToSelector:@selector(ignorePropertyNames)]) {
            if ([[self ignorePropertyNames] containsObject:propertyName]) {
                continue;
            }
        }
        id value = [self valueForKey:propertyName];
        [encoder encodeObject:value forKey:propertyName];
    }
    free(ivarList);
}
- (void)decode:(NSCoder *)decoder {
    unsigned int count = 0;
    Ivar *ivarList = class_copyIvarList([self class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivarList[i];
        NSString *propertyName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        propertyName = [propertyName substringFromIndex:1];
        if ([self respondsToSelector:@selector(ignorePropertyNames)]) {
            if ([[self ignorePropertyNames] containsObject:propertyName]) {
                continue;
            }
        }
        id value = [decoder decodeObjectForKey:propertyName];
        [self setValue:value forKey:propertyName];
    }
    free(ivarList);
}
@end
