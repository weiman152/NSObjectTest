//
//  ClassA.h
//  CopyTest
//
//  Created by wenhuanhuan on 2020/4/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassA : NSObject<NSCopying>

@property(nonatomic, copy)NSString * name;
@property(nonatomic, assign)int num;
@property(nonatomic, strong)NSArray * array;

-(instancetype)initWithName:(NSString *)name num:(int)num;

@end

NS_ASSUME_NONNULL_END
