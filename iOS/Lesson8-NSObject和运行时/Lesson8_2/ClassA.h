//
//  ClassA.h
//  Lesson8_2
//
//  Created by wenhuanhuan on 2020/2/22.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassA : NSObject

@property(nonatomic, copy)NSString * name;
@property(nonatomic, assign)int age;
@property(nonatomic, copy)NSString * remark;

-(instancetype)init;
-(void)hello;
-(void)printAllProperty;

@end

NS_ASSUME_NONNULL_END
