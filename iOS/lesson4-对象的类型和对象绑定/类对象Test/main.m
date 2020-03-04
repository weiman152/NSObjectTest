//
//  main.m
//  类对象Test
//
//  Created by wenhuanhuan on 2020/2/12.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        int n;
        BOOL flag = false;
        NSLog(@"请输入flag(0,1) = ");
        scanf("%d", &n);
        
        flag = n!= 0;
        /**
         Class是类对象类型，所有的类对象都是Class类型。OC中把类也当做对象看待，类的类型就是Class。
         */
        Class theClass = flag ? [ClassA class] : [ClassB class];
        id v = [[theClass alloc] init];
        [v whoAreYou];
        if ([v isMemberOfClass:[ClassA class]]) {
            NSLog(@"的确是A的对象");
        } else {
            NSLog(@"的确是B的对象");
        }
        
    }
    return 0;
}
