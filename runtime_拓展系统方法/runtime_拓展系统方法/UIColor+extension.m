//
//  UIColor+extension.m
//  runtime_拓展系统方法
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "UIColor+extension.h"
#import <objc/message.h>

@implementation UIColor (extension)
//加载这个分类的时候就会调用load方法
+ (void)load {
    //获取类方法
    Method redColorMethod = class_getClassMethod([UIColor class], @selector(redColor));
    
    //获取自己加的类方法
    Method at_redColorMethod = class_getClassMethod([UIColor class], @selector(at_redColor));
    
    //交换方法实现(主要实现就在这儿)
    method_exchangeImplementations(redColorMethod, at_redColorMethod);
}

//自己的方法
+ (__kindof UIColor *)at_redColor {
    UIColor *color = [UIColor at_redColor];
    //添加一个打印功能
    NSLog(@"%@",color);
    return color;
}
@end
