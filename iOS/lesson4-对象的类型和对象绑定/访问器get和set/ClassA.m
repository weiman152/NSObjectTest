//
//  ClassA.m
//  访问器get和set
//
//  Created by wenhuanhuan on 2020/2/12.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

- (int)age {
    return age;
}

-(void)setAge:(int)newValue {
    age = newValue;
}

- (void)printA {
    name = @"默认值";
    NSLog(@"age = %d, name = %@, score = %@", age, name, scores);
    NSLog(@"%@", self->name);
}

@end
