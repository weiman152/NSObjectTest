//
//  main.m
//  弱引用
//
//  Created by wenhuanhuan on 2020/2/18.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

int main(int argc, const char * argv[]) {
    
    People * a = [[People alloc] initWithName:@"武汉"];
    
    NSLog(@"a's name: %@, friends: %@", a.name, [a nameOfFriend]);
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        People * b = [[People alloc] initWithName:@"北京"];
        NSLog(@"b's name: %@, friend: %@", b.name, [b nameOfFriend]);
        
        [a setFriends:b];
        
        NSLog(@"now a's friends: %@", [a nameOfFriend]);
        
//        b = nil;
    }
    
    NSLog(@"last a's friends: %@", [a nameOfFriend]);
    
    return 0;
}
