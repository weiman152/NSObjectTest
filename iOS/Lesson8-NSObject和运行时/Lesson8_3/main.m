//
//  main.m
//  Lesson8_3
//
//  Created by wenhuanhuan on 2020/2/28.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"
#import "ClassC.h"

void testEqual(void);
void testDesc(void);
void testPerformSelector(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        testEqual();
        //testDesc();
        //testPerformSelector();
        
        
        
    }
    return 0;
}

void testEqual() {
    /**
     1.isEqual
     判断两个对象是否相等，定义在协议NSObject中。
     - (BOOL)isEqual:(id)object;
     
     */
    
    ClassA * a = [[ClassA alloc] initWithName:@"小明" age:10];
    ClassA * a2 = [[ClassA alloc] initWithName:@"小黄" age:6];
    ClassA * a3 = [[ClassA alloc] initWithName:@"小黄" age:6];
    ClassA * a4 = a3;
    
    NSLog(@"a == a2? %@", [a isEqual:a2] ? @"相等" : @"不相等");
    NSLog(@"a2 == a3? %@", [a2 isEqual:a3] ? @"相等" : @"不相等");
    NSLog(@"a3 == a4? %@", [a3 isEqual:a4] ? @"相等" : @"不相等");
    
    ClassB * b1 = [[ClassB alloc] initWithName:@"小红" age:5];
    ClassB * b2 = [[ClassB alloc] initWithName:@"小明" age:10];
    NSLog(@"b1 == b2? %@", [b1 isEqual:b2] ? @"相等" : @"不相等");
    NSLog(@"a == b2? %@", [a isEqual:b2] ? @"相等" : @"不相等");
    
    NSLog(@"内容相同的两个字符串是否相等？ %@", [@"1" isEqual:@"1"] ? @"相等" : @"不相等");
    NSString * s1 = @"a";
    NSString * s2 = @"a";
    NSString * s3 = [NSString stringWithFormat:@"a"];
    NSString * s3_2 = [NSString stringWithFormat:@"a"];
    NSMutableString * s4 = [NSMutableString stringWithFormat:@"a"];
    NSMutableString * s5 = [NSMutableString stringWithFormat:@"a"];
    NSLog(@"s1 == s2? %@", [s1 isEqual:s2] ? @"相等" : @"不相等");
    NSLog(@"s1 == s2? %@", [s1 isEqualToString:s2] ? @"相等" : @"不相等");
    NSLog(@"s1 == s3? %@", [s1 isEqual:s3] ? @"相等" : @"不相等");
    NSLog(@"s1 == s4? %@", [s1 isEqual:s4] ? @"相等" : @"不相等");
    NSLog(@"s4 == s5? %@", [s4 isEqual:s5] ? @"相等" : @"不相等");
    NSLog(@"s1 == s4? %@", [s1 isEqualToString:s4] ? @"相等" : @"不相等");
    NSLog(@"s4 == s5? %@", [s4 isEqualToString:s5] ? @"相等" : @"不相等");
    NSLog(@"s1 = %p, s2 = %p",s1, s2);
    NSLog(@"s3 = %p, s3_2 = %p",s3, s3_2);
    NSLog(@"s4 = %p, s5 = %p", s4, s5);
    
    printf("\n\n");
    NSArray * array = @[@1, @2];
    NSArray * array2 = @[@1, @2];
    NSMutableArray * array3 = @[@1, @2].mutableCopy;
    NSLog(@"array == array2? %d", [array isEqual:array2]);
    NSLog(@"array == array2? %d", [array isEqualTo:array2]);
    NSLog(@"array == array2? %d", [array isEqualToArray:array2]);
    NSLog(@"array == array3? %d", [array isEqual:array3]);
    NSLog(@"array: %p, array2: %p", array, array2);
    NSLog(@"array3: %p", array3);
}

void testDesc() {
    
    NSLog(@"NSObject: %@",[NSObject description]);
    NSLog(@"NSString: %@",[NSString description]);
    NSLog(@"ClassA: %@",[ClassA description]);
    NSLog(@"ClassB: %@",[ClassB description]);
    printf("\n\n");
    ClassA * a1 = [[ClassA alloc] initWithName:@"大熊猫🐼" age:3];
    ClassA * a2 = [[ClassA alloc] initWithName:@"红腹锦鸡" age:2];
    ClassB * b1 = [[ClassB alloc] initWithName:@"朱鹮" age:1];
    b1.sex = @"雌性";
    NSLog(@"a1: %@", a1.description);
    NSLog(@"a2: %@", [a2 description]);
    NSLog(@"b1: %@", b1.description);
    
    printf("\n");
    NSString * desc = [a1 performSelector:@selector(description)];
    NSLog(@"使用performSelector执行，\n%@", desc);
    printf("\n");
    
    
    
    
}

void testPerformSelector() {
    
    ClassA * a1 = [[ClassA alloc] initWithName:@"大熊猫🐼" age:3];
    ClassA * a2 = [[ClassA alloc] initWithName:@"红腹锦鸡" age:2];
    ClassB * b1 = [[ClassB alloc] initWithName:@"朱鹮" age:1];
    b1.sex = @"雌性";
    
    SEL method = [a1 isMemberOfClass:[ClassA class]] ? @selector(play) :@selector(work);
    if ([a1 respondsToSelector:method]) {
        [a1 performSelector:method];
    } else {
        NSLog(@"方法无效");
    }
    
    if ([a1 respondsToSelector:@selector(privateMethodTest)]) {
        [a1 performSelector:@selector(privateMethodTest)];
    } else {
        NSLog(@"方法无效");
    }
    
    SEL method2 = [b1 isMemberOfClass:[ClassA class]] ? @selector(play) :@selector(work);
    [b1 performSelector:method2];
    
    [a1 performSelector:@selector(eatWithFood:) withObject:@"竹子"];
    [b1 performSelector:@selector(interest:years:) withObject:@"吃虫子" withObject:@3];
    
    ClassC * c1 = [[ClassC alloc] init];
    if ([c1 respondsToSelector:@selector(privateTest)]) {
        [c1 performSelector:@selector(privateTest)];
    } else {
        NSLog(@"privateTest 没有被执行");
    }
    
    //[a1 performSelector:<#(nonnull SEL)#> withObject:<#(nullable id)#> afterDelay:<#(NSTimeInterval)#>];
}
