//
//  B.m
//  4_4实例变量的数据封装
//
//  Created by wenhuanhuan on 2019/6/18.
//  Copyright © 2019 weiman. All rights reserved.
//

#import "B.h"

@implementation B

// 这里不能像RGB中的color一样访问A的成员变量a
// 报错：Instance variable 'a' is protected
-(int)addA:(A *)aaa {
    //b = aaa->a;
    return b;
}

@end
