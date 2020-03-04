//
//  ClassA.m
//  Lesson8_4
//
//  Created by wenhuanhuan on 2020/3/3.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

-(void)run{
    NSLog(@"我是私有方法run");
}

-(void)sayHello {
    NSLog(@"你好，我是ClassA");
}

-(void)sayHelloWithName:(NSString *)name {
    NSLog(@"你好，我是ClassA, 我的名字是%@",name);
}

- (void)sayHelloWithName:(NSString *)name message:(NSString *)msg {
    NSLog(@"你好，我是ClassA, 我的名字是%@, 消息是： %@",name, msg);
}

-(void)sayHelloWithArray:(NSArray *)params {
    
    NSLog(@"数组： %@", params);
}

-(void)sayHelloWithName:(NSString *)name age:(NSNumber *)age gender:(NSString *)gender{
    NSLog(@"name: %@, age = %d, gender = %@", name, age.integerValue, gender);
}
@end
