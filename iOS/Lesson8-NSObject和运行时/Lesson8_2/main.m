//
//  main.m
//  Lesson8_2
//
//  Created by wenhuanhuan on 2020/2/22.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

int main(int argc, const char * argv[]) {
    
    ClassA * outA = [ClassA alloc];
    outA.name = @"外部A";
    
    @autoreleasepool {
       
        /**
         1.类方法alloc，声明在NSObject类中。
         + (instancetype)alloc OBJC_SWIFT_UNAVAILABLE("use object initializers instead");
         作用是生成消息接收类的实例对象，为实例对象开辟存储空间,并初始化对象。之前alloc负责分配内存空间，
         init负责对对象进行初始化操作。通过实验我们知道，现在alloc方法就可以完成开辟空间和初始化的操作。
         实际上，现在的alloc和new方法是一个意思了。
         */
        ClassA * a = [ClassA alloc];
        a.name = @"小雨滴💧";
        NSLog(@"alloc a = %@, name = %@",a, a.name);
        [a hello];
        
        ClassA * a2 = [ClassA new];
        a2.name = @"小雪花❄️";
        [a2 hello];
        
        /**
         2.对象方法dealloc声明在NSObject类中
         - (void)dealloc OBJC_SWIFT_UNAVAILABLE("use 'deinit' to define a de-initializer");
         作用是，释放实例对象。我们知道，当对象的引用计数为0的时候，对象就会被释放了，对象实际释放是在
         dealloc方法中进行的。程序不允许直接调用这个方法。允许子类中重写这个方法，当对象释放的时候，
         这个方法会被调用。
         */
        
        /**
         
         - (id)init {
             return _objc_rootInit(self);
         }

         id _objc_rootInit(id obj)
         {
             return obj;
         }
         */
        
        ClassA * a3 = [[ClassA alloc] init];
        NSLog(@"赋值前 a3: ");
        [a3 printAllProperty];
        a3.name = @"小云朵☁️";
        a3.age = 20;
        a3.remark = @"白白的云";
        NSLog(@"赋值后 a3: ");
        [a3 printAllProperty];
        
        ClassA * a4 = [ClassA alloc];
        NSLog(@"只用alloc创建的对象a4: ");
        [a4 printAllProperty];
        
        ClassA * a5 = [ClassA new];
        NSLog(@"使用new创建的对象a5: ");
        [a5 printAllProperty];
        
        //手动调用
        [ClassA initialize];
        
        NSMutableSet * set = [[NSMutableSet alloc] init];
        for (int i = 0; i<100; i++) {
            ClassA * aa = [ClassA new];
            [set addObject:aa];
        }
        NSLog(@"set 的个数 %lu", (unsigned long)set.count);
        
    }
    [outA hello];
    
    return 0;
}
