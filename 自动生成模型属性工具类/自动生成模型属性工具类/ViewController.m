//
//  ViewController.m
//  自动生成模型属性工具类
//
//  Created by lg on 16/6/29.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ATProperty.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //读取plist(最外层一个字典，字典里是个大数组)
    NSString *path = [[NSBundle mainBundle] pathForResource:@"status.plist" ofType:nil];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *arr = dict[@"statuses"];
    
    //调用分类方法打印模型属性代码
    [NSObject createPropertyCodeWithDict:arr[2][@"user"]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
