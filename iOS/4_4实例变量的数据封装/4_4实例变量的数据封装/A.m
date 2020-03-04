//
//  A.m
//  4_4实例变量的数据封装
//
//  Created by wenhuanhuan on 2019/6/18.
//  Copyright © 2019 weiman. All rights reserved.
//

#import "A.h"

@implementation A

- (id)initWithA:(int)aa {
    self = [super init];
    if (self != nil) {
        a = aa;
    }
    return self;
}

- (void)print {
    printf("这是A， a = %d \n", a);
}

@end
