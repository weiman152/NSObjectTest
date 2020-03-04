//
//  ClassB.m
//  类对象初始化Initialize
//
//  Created by wenhuanhuan on 2020/2/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassB.h"

static NSString * myMessage = @"Hello";

@implementation ClassB

+ (void)initialize
{
    NSLog(@"I am B, initialize,thanks");
}

+ (void)setMessage:(NSString *)msg {
    myMessage = msg;
}

- (void)sayHello {
    NSLog(@"hi, %@", myMessage);
}

@end
