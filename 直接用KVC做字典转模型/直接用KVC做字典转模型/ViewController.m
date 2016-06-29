//
//  ViewController.m
//  直接用KVC做字典转模型
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ATProperty.h"
#import "ATStatus.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //解析plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"status.plist" ofType:nil];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *arr = dict[@"statuses"];
    
    //先打印一下属性代码(有时候每个字典里不一定每个属性都有，比如转发微博的属性，有的微博有转发，有的则没有，所以
    // 用这个打印出的模型属性放到模型里不一定是全部属性都有的，还好如果崩溃的话会提醒你哪个没有写上去)
//    [NSObject createPropertyCodeWithDict:arr[0]];
    
    //转模型
    NSMutableArray *statuses = [NSMutableArray array];
    for (NSDictionary *statusDict in arr) {
        ATStatus *status = [ATStatus statusWithDict:statusDict];
        [statuses addObject:status];
    }
    NSLog(@"%@",statuses);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
