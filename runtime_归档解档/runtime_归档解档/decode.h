//
//  decode.h
//  runtime_归档解档
//
//  Created by lg on 16/7/2.
//  Copyright © 2016年 at. All rights reserved.
//

// 一句宏搞定归解档
#import "NSObject+ATArchiver.h"

#define archiverImplementation \
- (instancetype)initWithCoder:(NSCoder *)aDecoder {\
    if (self = [super init]) {\
        [self decode:aDecoder];\
    }\
    return self;\
}\
\
- (void)encodeWithCoder:(NSCoder *)aCoder {\
    [self encode:aCoder];\
}