//
//  ViewController.m
//  runtime_消息机制
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ViewController.h"
#import "ATDog.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ATDog *dog = [[ATDog alloc] init];
    //实例方法调用过程
//    [dog run];
//    
//    [dog performSelector:@selector(run)];
//    
//    objc_msgSend(dog, @selector(run));
    
    //类方法调用过程
//    [ATDog run];
//    
//    Class dogClass = [ATDog class];
//    
//    [dogClass performSelector:@selector(run)];
//    
//    objc_msgSend(dogClass, @selector(run));
    
    //含参方法
//    [dog eat:@"骨头"];
//    
//    [dog performSelector:@selector(eat:) withObject:@"骨头"];
//    
//    objc_msgSend(dog, @selector(eat:),@"骨头");
    
    //多个参数的时候performSelector怎么处理
    [dog eat:@"骨头" others:[NSArray arrayWithObjects:@"鸡", @"鸭", @"鱼", @"肉", nil]];
    NSLog(@"华丽丽的分割线");
    [dog performSelector:@selector(eat:others:) withObject:@"骨头" withObject: [NSArray arrayWithObjects:@"鸡", @"鸭", @"鱼", @"肉", nil]];
    NSLog(@"华丽丽的分割线");
    objc_msgSend(dog, @selector(eat:others:),@"骨头",[NSArray arrayWithObjects:@"鸡", @"鸭", @"鱼", @"肉", nil]);
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
