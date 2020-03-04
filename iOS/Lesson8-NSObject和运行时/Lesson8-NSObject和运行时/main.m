//
//  main.m
//  Lesson8-NSObject和运行时
//
//  Created by wenhuanhuan on 2020/2/20.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestSon.h"

/**
 第一部分
 根类方法中提供了运行时系统的基本功能，根类相当于运行时系统的一个接口。
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSObject * obj = [[NSObject alloc] init];
        ObjectTest * test = [[ObjectTest alloc] initWithName:@"小米粒"];
        /**
         1.对象方法class定义在protocol NSObject中，NSObject类遵守了
         这个协议，也就在NSObject的实现文件中实现了这个方法。
         对象方法class返回对象所属的类的类对象。
         */
        NSLog(@"-------------对象方法class-----------------");
        NSLog(@"obj class, %@",[obj class]);
        NSLog(@"test class, %@",[test class]);
        printf("\n");
        /**
         2.类方法class，定义在NSObject类中，是NSObject类的一个公有方
         法，返回类对象。
         */
        NSLog(@"-------------类方法class-----------------");
        NSLog(@"NSObject class, %@", [NSObject class]);
        NSLog(@"ObjectTest class, %@", [ObjectTest class]);
        printf("\n");
        /**
         3.对象方法self，也是定义在NSObject协议中的，声明为：
         - (instancetype)self;
         此方法返回对象自身，是一个无任何实际动作，但是很有用的方法。
         */
        NSLog(@"-------------对象方法self-----------------");
        NSLog(@"obj self, %@",[obj self]);
        NSLog(@"test self, %@",[test self]);
        NSLog(@"test self, %@",[test self].name);
        printf("\n");
        /**
         4.对象方法isMemberOfClass也是定义在协议中的一个方法，声明为：
         - (BOOL)isMemberOfClass:(Class)aClass;
         用于判断对象是不是参数aClass类的对象。
         注意：
         这个方法判断的时候，如果参数是父类，则返回NO。
         打印结果：
          test 是不是 NSObject 类型？否
          test 是不是 ObjectTest 类型？是
          obj 是不是 ObjectTest 类型？否
          obj 是不是 NSObject 类型？是
         */
        BOOL isTest = [test isMemberOfClass:[NSObject class]];
        BOOL isTest2 = [test isMemberOfClass:[ObjectTest class]];
        BOOL isTest3 = [obj isMemberOfClass:[ObjectTest class]];
        BOOL isTest4 = [obj isMemberOfClass:[NSObject class]];
        NSLog(@"-------------isMemberOfClass--------------");
        NSLog(@"test 是不是 NSObject 类型？%@", isTest ? @"是" : @"否");
        NSLog(@"test 是不是 ObjectTest 类型？%@", isTest2 ? @"是" : @"否");
        NSLog(@"obj 是不是 ObjectTest 类型？%@", isTest3 ? @"是" : @"否");
        NSLog(@"obj 是不是 NSObject 类型？%@", isTest4 ? @"是" : @"否");
        printf("\n");
        
        /**
         5.对象方法isKindOfClass也是定义在协议中的，声明为：
         - (BOOL)isKindOfClass:(Class)aClass;
         作用于isMemberOfClass类似，但是也有不同。这个方法的作用是判断
         消息接受者是否是参数aClass类或者aClass的父类的实例。
         下面程序执行结果是：
         test 是不是 NSObject 类型？是
         test 是不是 ObjectTest 类型？是
         obj 是不是 ObjectTest 类型？否
         obj 是不是 NSObject 类型？是
         */
        BOOL isTestKind = [test isKindOfClass:[NSObject class]];
        BOOL isTestKind2 = [test isKindOfClass:[ObjectTest class]];
        BOOL isTestKind3 = [obj isKindOfClass:[ObjectTest class]];
        BOOL isTestKind4 = [obj isKindOfClass:[NSObject class]];
        NSLog(@"-------------isKindOfClass--------------");
        NSLog(@"test 是不是 NSObject 类型？%@", isTestKind ? @"是" : @"否");
        NSLog(@"test 是不是 ObjectTest 类型？%@", isTestKind2 ? @"是" : @"否");
        NSLog(@"obj 是不是 ObjectTest 类型？%@", isTestKind3 ? @"是" : @"否");
        NSLog(@"obj 是不是 NSObject 类型？%@", isTestKind4 ? @"是" : @"否");
        printf("\n");
        
        /**
         6.类方法isSubclassOfClass定义在NSObject类的一个公有方法，
         声明为：
         + (BOOL)isSubclassOfClass:(Class)aClass;

         判断消息接收者是不是参数aClass的子类或者自身。
         以下方法输出为：
         NSObject 是不是 test所属类 的子类或自身？否
         ObjectTest 是不是 test所属类 的子类或自身？是
         NSObject 是不是 obj所属类 子类或自身？是
         ObjectTest 是不是 obj所属类 子类或自身？是
         ObjectTest 是不是 NSObject 子类或自身？是
         */
        BOOL isTestsub = [NSObject isSubclassOfClass:[test class]];
        BOOL isTestsub2 = [ObjectTest isSubclassOfClass:[test class]];
        BOOL isTestsub3 = [NSObject isSubclassOfClass:[obj class]];
        BOOL isTestsub4 = [ObjectTest isSubclassOfClass:[obj class]];
        BOOL isTestsub5 = [ObjectTest isSubclassOfClass:[NSObject class]];
        NSLog(@"-------------isSubclassOfClass-----------");
        NSLog(@"NSObject 是不是 test所属类 的子类或自身？%@", isTestsub ? @"是" : @"否");
        NSLog(@"ObjectTest 是不是 test所属类 的子类或自身？%@", isTestsub2 ? @"是" : @"否");
        NSLog(@"NSObject 是不是 obj所属类 子类或自身？%@", isTestsub3 ? @"是" : @"否");
        NSLog(@"ObjectTest 是不是 obj所属类 子类或自身？%@", isTestsub4 ? @"是" : @"否");
        NSLog(@"ObjectTest 是不是 NSObject 子类或自身？%@", isTestsub5 ? @"是" : @"否");
        printf("\n");
        
        /**
         7. superclass，定义在协议中，是一个只读的属性。
         @property (readonly) Class superclass;
         我们可以使用对象来调用superclass，就像一个对象方法一样，其实是调用它的getter方法。
         superclass的作用是：返回对象所在类的父类。
         */
        NSLog(@"-------------对象方法superclass-----------");
        
        TestSon * son = [[TestSon alloc] initWithName:@"小苗苗🌹"];
        
        NSLog(@"obj superclass:%@",[obj superclass]);
        NSLog(@"test superclass:%@",[test superclass]);
        NSLog(@"son superclass:%@",[son superclass]);
        NSLog(@"son superclass:%@",son.superclass);
        NSLog(@"son name%@",[son name]);
        NSLog(@"son name%@",son.name);
        printf("\n");
        
        /**
         8. 类方法superclass，定义在NSObject类中，返回类对象。
         + (Class)superclass;
         */
        NSLog(@"-------------类方法superclass-----------");
        NSLog(@"NSObject superclass:%@",[NSObject superclass]);
        NSLog(@"ObjectTest superclass:%@",[ObjectTest superclass]);
        NSLog(@"TestSon superclass:%@",[TestSon superclass]);
        NSLog(@"NSString superclass:%@",[NSString superclass]);
        NSLog(@"NSArray superclass:%@",[NSArray superclass]);
        NSLog(@"NSMutableArray superclass:%@",[NSMutableArray superclass]);
        
        
        
    }
    return 0;
}
