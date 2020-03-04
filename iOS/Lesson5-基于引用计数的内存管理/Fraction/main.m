//
//  main.m
//  Fraction
//
//  Created by wenhuanhuan on 2020/2/17.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Fraction * f1 = [Fraction fractionWithfenzi:2 fenmu:3];
        Fraction * f2 = [Fraction fractionWithfenzi:3 fenmu:7];
        Fraction * r1 = [f1 add:f2];
        Fraction * r2 = [f1 sub:f2];
        Fraction * r3 = [f1 mul:f2];
        Fraction * r4 = [f1 div:f2];
        
        NSLog(@"r1 = %@",[r1 desc]);
        NSLog(@"r2 = %@",[r2 desc]);
        NSLog(@"r3 = %@",[r3 desc]);
        NSLog(@"r4 = %@",[r4 desc]);
    }
    return 0;
}
