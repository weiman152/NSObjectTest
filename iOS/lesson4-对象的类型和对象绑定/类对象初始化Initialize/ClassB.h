//
//  ClassB.h
//  类对象初始化Initialize
//
//  Created by wenhuanhuan on 2020/2/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClassB : ClassA

+(void)initialize;
+(void)setMessage:(NSString *)msg;
-(void)sayHello;

@end

NS_ASSUME_NONNULL_END
