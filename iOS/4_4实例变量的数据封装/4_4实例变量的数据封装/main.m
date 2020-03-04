//
//  main.m
//  4_4实例变量的数据封装
//
//  Created by wenhuanhuan on 2019/6/18.
//  Copyright © 2019 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RGB.h"
#import "A.h"
#import "CA.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        RGB *u, *w;
        u = [[RGB alloc] initWithRed:255 green:127 blue:127];
        w = [[RGB alloc] initWithRed:0 green:127 blue:64];
        [u print];
        [w print];
        [[u blendColor:w] print];
        
        A * a = [[A alloc] initWithA:10];
        CA * ca = [[CA alloc] initWithA:20];
        [a print];
        [ca print];
        [ca printA:a];
    }
    return 0;
}
