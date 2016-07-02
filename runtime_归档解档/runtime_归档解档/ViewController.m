//
//  ViewController.m
//  runtime_归档解档
//
//  Created by lg on 16/7/2.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "NSObject+ATArchiver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self archiver];
}
- (void)archiver {
    //不一定非要是.plist,就算你用.data也没关系
    NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"archiver.plist"];
    
    Dog *d = [[Dog alloc] init];
    d.name = @"旺财";
    d.age = 12;
    //归档
    [NSKeyedArchiver archiveRootObject:d toFile:path];
    //解档
    Dog *d1 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"name:%@",d1.name);
    NSLog(@"age:%ld",d1.age);
    
}



@end
