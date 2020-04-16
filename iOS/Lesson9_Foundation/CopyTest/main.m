//
//  main.m
//  CopyTest
//
//  Created by wenhuanhuan on 2020/4/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        ClassA * a = [[ClassA alloc] initWithName:@"小明" num:1];
        NSMutableString * str = [NSMutableString stringWithString:@"1"];
        a.array = @[str, @"2", @"3"];
        ClassA * a2 = a.copy;
        [str appendString:@" hello"];
        NSLog(@"a: %@", a);
        NSLog(@"a2: %@", a2);
        
    }
    return 0;
}
