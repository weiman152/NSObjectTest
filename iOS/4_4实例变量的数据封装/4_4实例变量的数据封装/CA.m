//
//  CA.m
//  4_4实例变量的数据封装
//
//  Created by wenhuanhuan on 2019/6/18.
//  Copyright © 2019 weiman. All rights reserved.
//

#import "CA.h"

@implementation CA

- (void)printA:(A *)aaa {
    printf("这是CA， a = %d\n", aaa->a);
}

@end
