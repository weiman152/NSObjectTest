//
//  main.m
//  静态变量Static
//
//  Created by wenhuanhuan on 2020/2/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        ClassA * a = [[ClassA alloc] init];
        ClassA * b = [[ClassA alloc] init];
        ClassA * c = b;
        
        [ClassA printName];
        [a printName];
        [b printName];
        
        [a changeName:@"坏蛋"];
        [a printName];
        [b printName];
        [c printName];
        [ClassA printName];
        
    }
    return 0;
}
