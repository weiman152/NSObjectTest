//
//  Person.m
//  4_4访问器(getter和setter)
//
//  Created by wenhuanhuan on 2019/6/19.
//  Copyright © 2019 weiman. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)name {
    return name;
}

-(void)setName:(NSString *)newValue {
    name = newValue;
}

-(NSString *)sex {
    return sex;
}

-(void)test {
    name = @"皮特儿";
    age = 20;
    sex = @"男";
    score = 100;
    NSLog(@"姓名: %@, 性别： %@， 年龄： %d, 成绩： %d", name,sex, age, score);
}

-(void)setTelephone:(NSString * _Nonnull)telephone {
    _telephone = telephone;
}

- (instancetype)initWithPhone:(NSString *)phone {
    if ((self = [super init] ) != nil) {
        _telephone = phone;
    }
    return self;
}

@end
