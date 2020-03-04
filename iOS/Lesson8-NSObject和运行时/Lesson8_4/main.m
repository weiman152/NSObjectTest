//
//  main.m
//  Lesson8_4
//
//  Created by wenhuanhuan on 2020/3/3.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "NSObject+Perform.h"

void test1(void);
void test2(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        
    }
    return 0;
}

void test1() {
    //备注：下面的测试方法中，都没有进行安全性判断，只是测试，项目中使用的时候，最好加上判断。
    
    //调用私有方法
    ClassA * a = [[ClassA alloc]init];
    [a performSelector:@selector(run)];
    
    //调用正常方法，无参数
    [a performSelector:@selector(sayHello)];
    
    //调用带一个参数的方法
    [a performSelector:@selector(sayHelloWithName:) withObject:@"大白兔"];
    
    //调用带两个参数的方法
    [a performSelector:@selector(sayHelloWithName:message:) withObject:@"小狐狸" withObject:@"明天出来晒太阳吧"];
    
    //利用数组传递多个参数
    [a performSelector:@selector(sayHelloWithArray:) withObject:@[@"小明",@"11",@"四年级"]];
    
    //重写的performSelector，多参数传递
    NSNumber * age = [NSNumber numberWithInt:20];
    NSString * name = @"小土豆";
    NSString * gender = @"男";
    SEL selector = NSSelectorFromString(@"sayHelloWithName:age:gender:");
    NSArray * array = @[name, age, gender];
    [a performSelector:selector withObjects:array];
}

void test2() {
    
}
