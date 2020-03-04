//
//  main.m
//  Lesson5-基于引用计数的内存管理
//
//  Created by wenhuanhuan on 2020/2/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

//计算两个整数的最大公约数,辗转相除法，递归
static int gcd(int a, int b) {
    if (a < b)  return gcd(b, a);
    if (b == 0) return a;
    return gcd(b, a % b);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        id obj = [[NSObject alloc] init];
        NSLog(@"%lu", (unsigned long)[obj retainCount]);
        
        [obj retain];
        NSLog(@"%lu", (unsigned long)[obj retainCount]);
        
        [obj retain];
        NSLog(@"%lu", (unsigned long)[obj retainCount]);
        
        [obj release];
        NSLog(@"%lu", (unsigned long)[obj retainCount]);
        
        [obj release];
        NSLog(@"%lu", (unsigned long)[obj retainCount]);
        
        [obj release];
        NSLog(@"%lu", (unsigned long)[obj retainCount]);
        
        
        int a = gcd(24, 18);
        NSLog(@"a = %d", a);
    }
    return 0;
}

