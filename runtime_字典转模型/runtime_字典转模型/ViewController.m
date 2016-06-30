//
//  ViewController.m
//  runtime_字典转模型
//
//  Created by lg on 16/6/30.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ViewController.h"
#import "ATStatus.h"
#import "NSObject+ATProperty.h"
#import "NSObject+ATObjectModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"status.plist" ofType:nil];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *array = dict[@"statuses"];
//        [NSObject createPropertyCodeWithDict:array[0][@"pic_urls"][0]];
    
    
    NSMutableArray *statuses = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        //runtime转模型
        ATStatus *status = [ATStatus objectModelWithDict:dict];
        [statuses addObject:status];
    }
    NSLog(@"%@",statuses);
//    ATStatus *status = statuses[0];
//    NSLog(@"%@", status.source);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
