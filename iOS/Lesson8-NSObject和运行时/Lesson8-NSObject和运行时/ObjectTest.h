//
//  ObjectTest.h
//  Lesson8-NSObject和运行时
//
//  Created by wenhuanhuan on 2020/2/20.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjectTest : NSObject

@property(nonatomic, copy)NSString * name;

-(id)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
