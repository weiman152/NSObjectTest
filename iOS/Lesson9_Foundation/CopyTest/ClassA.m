//
//  ClassA.m
//  CopyTest
//
//  Created by wenhuanhuan on 2020/4/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

-(instancetype)initWithName:(NSString *)name num:(int)num {
    if (self = [super init]) {
        self.name = name;
        self.num = num;
        self.array = @[];
    }
    return self;
}

//浅复制
//-(id)copyWithZone:(NSZone *)zone {
//    return self;
//}

//单层深复制
-(id)copyWithZone:(NSZone *)zone {
    ClassA * a = [[ClassA allocWithZone:zone] init];
    a.name = self.name;
    a.num = self.num;
    a.array = self.array;
    return a;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"对象地址%p: name: %p, %@, num: %d, array: %p, %@",self, self.name, self.name, self.num, self.array, self.array];
}

@end
