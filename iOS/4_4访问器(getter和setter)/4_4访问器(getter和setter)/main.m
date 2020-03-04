//
//  main.m
//  4_4访问器(getter和setter)
//
//  Created by wenhuanhuan on 2019/6/19.
//  Copyright © 2019 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person * p1 = [[Person  alloc] init];
        //没有getter和stter的时候，可以通过 -> 允许访问name属性.
        p1->name = @"小明";
        NSLog(@"%@", p1->name);
        /*
         没有getter和stter的时候，不允许通过点操作符访问成员变量，因为点操作符相当于调用[p1 name]或者 [p1  setName:]方法，而person中没有声明和实现这两个方法，所以报错。  Property 'name' not found on object of type 'Person *'; did you mean to access instance variable 'name'?
         */
        //p1.name = @"小花";
        
        /*
         声明和实现了getter和setter的时候，就可以使用点操作符了。
         也可以继续使用 -> 访问。
         */
        p1.name = @"斯威夫特";
        NSLog(@"新名字： %@", p1.name);
        p1 -> name = @"小编";
        NSLog(@"再次新名字是： %@", p1->name);
        /*
         只实现了getter方法，是无法对这个变量赋值的，相当于只读属性。
         报错：No setter method 'setSex:' for assignment to property
         */
        //p1.sex = @"男";
        NSLog(@"性别是： %@",p1.sex);
        
        [p1 test];
        
        p1.interest = @"旅游、养花儿、喂鱼";
        NSLog(@"兴趣是： %@", p1.interest);
        
        Person * p2 = [[Person alloc] initWithPhone:@"123456789"];
        //报错： Assignment to readonly property
        //p2.telephone = @"33333333333";
        NSLog(@"p2的电话是： %@", p2.telephone);
    }
    return 0;
}
