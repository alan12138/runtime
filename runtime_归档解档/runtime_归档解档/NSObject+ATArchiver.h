//
//  NSObject+ATArchiver.h
//  runtime_归档解档
//
//  Created by lg on 16/7/2.
//  Copyright © 2016年 at. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ATArchiver)
- (NSArray *)ignorePropertyNames;
- (void)encode:(NSCoder *)encoder;
- (void)decode:(NSCoder *)decoder;
@end
