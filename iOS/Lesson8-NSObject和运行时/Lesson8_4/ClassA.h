//
//  ClassA.h
//  Lesson8_4
//
//  Created by wenhuanhuan on 2020/3/3.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassA : NSObject

-(void)sayHello;

-(void)sayHelloWithName:(NSString *)name;

-(void)sayHelloWithName:(NSString *)name message: (NSString *)msg;

-(void)sayHelloWithArray:(NSArray *)params;

-(void)sayHelloWithName:(NSString *)name age:(NSNumber *)age gender:(NSString *)gender;

-(void)test;

@end

NS_ASSUME_NONNULL_END
