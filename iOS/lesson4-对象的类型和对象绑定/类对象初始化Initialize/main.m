//
//  main.m
//  类对象初始化Initialize
//
//  Created by wenhuanhuan on 2020/2/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassB.h"
#import "ClassC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        /**
         initialize方法只会调用一次，对类对象进行初始化，每个类只有一个类对象，所以初始化也会只有一次。
         B是A的子类，B中也重写了initialize方法，会调用一次A的initialize方法，然后在调用一次B的initialize方法。
         */
        ClassB * b = [[ClassB alloc] init];
        for (int i = 0; i < 10; i++) {
            ClassB * bb = [[ClassB alloc] init];
        }
        [b sayHello];
        [ClassB initialize];
        [ClassB setMessage:@"你好，过得愉快"];
        [b sayHello];
        
        NSLog(@"\n----------C对象-------------");
        /**
         C中没有重写initialize方法，C是A的子类，会调用一次A的initialize方法。
         */
        ClassC * c = [[ClassC alloc] init];
        [c sayHi];
        
    }
    return 0;
}
