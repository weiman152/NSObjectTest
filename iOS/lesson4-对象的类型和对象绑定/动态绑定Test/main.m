//
//  main.m
//  动态绑定Test
//
//  Created by wenhuanhuan on 2020/2/12.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"
#import "ClassC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        id obj;
        int n = 0;
        
        while (n < 3 && n>-1) {
            
            NSLog(@"请输入n(0,1,2) = ");
            scanf("%d", &n);
            switch (n) {
                case 0: obj = [[ClassA alloc] init]; break;
                case 1: obj = [[ClassB alloc] init]; break;
                case 2: obj = [[NSObject alloc] init]; break;
                default: NSLog(@"错误"); break;
            }
            [obj whoAreYou];
            [obj funA];
            [obj funC];
            continue;
        }
    }
    return 0;
}
