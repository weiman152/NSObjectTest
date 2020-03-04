//
//  ClassB.m
//  Lesson8_3
//
//  Created by wenhuanhuan on 2020/2/28.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassB.h"

@implementation ClassB

-(void)work {
    NSLog(@"%@, %@ 想要工作", self.class, self.name);
}

-(NSString *)description {
    NSString * desc = [NSString stringWithFormat:@"%@ name: %@, age: %d, sex: %@",self.class, self.name, self.age, self.sex];
    return desc;
}

@end
