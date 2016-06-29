//
//  ViewController.m
//  runtime_动态添加方法
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ViewController.h"
#import "ATDog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //本来ATDog是没有run:方法的
    ATDog *dog = [[ATDog alloc] init];
    [dog performSelector:@selector(run:) withObject:@"跑啊"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
