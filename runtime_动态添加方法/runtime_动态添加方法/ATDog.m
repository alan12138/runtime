//
//  ATDog.m
//  runtime_动态添加方法
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ATDog.h"
#import <objc/message.h>

@implementation ATDog
//定义替代的函数
//默认一个方法都有两个隐式参数，self:方法调用者,_cmd:调用方法的编号，param1:自己加的参数
void runImp1(id self, SEL _cmd, id param1) {
    NSLog(@"调用run %@ %@ %@", self, NSStringFromSelector(_cmd), param1);
}
//在这里动态添加方法，当调用了没有实现的方法的时候就会调用这个方法，从这能知道哪个方法没有实现从而动态添加方法
//参数sel就是没有实现的方法
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == @selector(run:)) {
        /*参数说明：
         cls:给哪个类添加方法
         SEL:添加方法的方法编号，就是你调用却没有实现的方法
         IMP:为未实现方法定义的函数名
         types:方法类型
         */
        class_addMethod(self, sel, (IMP)runImp1, "v@:@");
        
        //添加完return
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}
@end
