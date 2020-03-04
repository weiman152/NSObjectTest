//
//  ClassA.m
//  静态变量Static
//
//  Created by wenhuanhuan on 2020/2/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassA.h"

static int age = 10;

@implementation ClassA

+(void)printName {
    NSLog(@"类方法，name is %@", name);
    NSLog(@"age = %d",age);
}

+(void)changeName: (NSString *)newName {
    name = newName;
}

-(void)printName {
    NSLog(@"对象方法，name is %@", name); 
}

-(void)changeName: (NSString *)newName {
    name = newName;
}


@end
