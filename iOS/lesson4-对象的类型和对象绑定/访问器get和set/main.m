//
//  main.m
//  访问器get和set
//
//  Created by wenhuanhuan on 2020/2/12.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        ClassA * a = [[ClassA alloc] init];
        a.age = 10;
        [a setAge:20];
        
        [a printA];
        
    }
    return 0;
}
