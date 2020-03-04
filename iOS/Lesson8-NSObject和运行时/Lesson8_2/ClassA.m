//
//  ClassA.m
//  Lesson8_2
//
//  Created by wenhuanhuan on 2020/2/22.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

+ (void)initialize
{
    if (self == [ClassA class]) {
        NSLog(@"ClassA 被初始化了");
    }
}

-(instancetype)init {
    if (self = [super init]) {
        self.name = @"无名氏";
        self.remark = @"default";
    }
    return self;
}

-(void)hello {
    NSLog(@"你好，我是A类的对象，我的名字是%@", self.name);
}

-(void)printAllProperty {
    NSLog(@"self = %@ :", self);
    NSLog(@"name = %@, age = %d, remark = %@",
            self.name, self.age, self.remark);
}

- (void)dealloc
{
    //NSLog(@"A的对象 %@ , %@ 被销毁了",self, self.name);
}

@end
