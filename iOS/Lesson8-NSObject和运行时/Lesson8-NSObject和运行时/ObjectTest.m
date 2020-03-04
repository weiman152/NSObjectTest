//
//  ObjectTest.m
//  Lesson8-NSObject和运行时
//
//  Created by wenhuanhuan on 2020/2/20.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ObjectTest.h"

@implementation ObjectTest

-(id)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

@end
