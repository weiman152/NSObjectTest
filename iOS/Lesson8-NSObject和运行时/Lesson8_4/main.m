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
void test3(void);
void test4(void);

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //test2();
        // test3();
        test4();
        
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
    
    ClassA * a = [[ClassA alloc]init];
    if ([a respondsToSelector:@selector(sayHello)]) {
         [a performSelector:@selector(sayHello) withObject:nil afterDelay:0];
        } else {
            NSLog(@"不执行呢");
    }
}

void test3() {
    ClassA * a = [[ClassA alloc] init];
    if ([a respondsToSelector:@selector(sayHello)]) {
        [a performSelector:@selector(sayHello) withObject:nil afterDelay:0 inModes:@[@"NSDefaultRunLoopMode",@"NSRunLoopCommonModes"]];
    }else{
        NSLog(@"不执行哟");
    }
    
}

void test4() {
    
    //1.- (void)performSelectorOnMainThread:(SEL)aSelector withObject:(nullable id)arg waitUntilDone:(BOOL)wait;
    
    NSLog(@"1111 %@", [NSRunLoop currentRunLoop].currentMode);
    
    ClassA * a = [[ClassA alloc] init];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"------dispatch_async--------");
        [a sayHelloWithName:@"小毛驴"];
        printf("\n\n");
        
    });
    
    NSLog(@"------performSelectorOnMainThread--------");
    [a performSelectorOnMainThread:@selector(sayHelloWithName:) withObject:@"小绵羊" waitUntilDone:YES];
    
}
