//
//  ViewController.m
//  runtime_在分类中添加属性
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ATDog.h"
#import "NSObject+ATTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSObject *obj = [[NSObject alloc] init];
    obj.name = @"1";
    NSLog(@"%@",obj.name);
    
    NSObject *obj1 = [[NSObject alloc] init];
    obj1.name = @"2";
    NSLog(@"%@",obj1.name);
    
    NSObject *objText = [[NSObject alloc] init];
    objText.sex = @"女博士";
    NSLog(@"%@",objText.sex);
    
    NSObject *objText1 = [[NSObject alloc] init];
    NSLog(@"%@",objText1.sex);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
