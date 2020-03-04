//
//  ClassA.h
//  Lesson8_3
//
//  Created by wenhuanhuan on 2020/2/28.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassA : NSObject

@property(nonatomic, copy)NSString * name;
@property(nonatomic, assign)int age;

-(instancetype)initWithName:(NSString *)name age:(int)age;

-(void)play;

-(void)eatWithFood:(NSString *)food;

/**
 兴趣爱好和年数
 */
-(void)interest: (NSString *)obj1 years:(int)years;


@end

NS_ASSUME_NONNULL_END
