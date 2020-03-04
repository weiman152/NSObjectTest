//
//  ClassB.h
//  Lesson8_3
//
//  Created by wenhuanhuan on 2020/2/28.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClassB : ClassA

@property(nonatomic, copy)NSString * sex;

-(void)work;

@end

NS_ASSUME_NONNULL_END
