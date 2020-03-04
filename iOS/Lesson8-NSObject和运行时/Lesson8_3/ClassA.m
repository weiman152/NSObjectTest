//
//  ClassA.m
//  Lesson8_3
//
//  Created by wenhuanhuan on 2020/2/28.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

-(instancetype)initWithName:(NSString *)name age:(int)age {
    if (self = [super init]) {
        self.name = name;
        self.age  = age;
    }
    return self;
}

//- (void)play {
//    NSLog(@"%@, %@ 想要玩耍", self.class, self.name);
//}

-(void)eatWithFood:(NSString *)food {
    NSLog(@"%@ 爱吃 %@", self.name, food);
}

-(void)interest:(NSString *)obj1 years:(int)years {
    NSLog(@"%@ 的爱好是 %@, 坚持了%d年了", self.name, obj1, years);
}

-(void)privateMethodTest {
    NSLog(@"我是ClassA的私有方法，performSelector能访问我吗？");
}

-(NSString *)description {
    NSString * desc = [NSString stringWithFormat:@"%@ name: %@, age: %d",self.class, self.name, self.age];
    return desc;
}

@end
