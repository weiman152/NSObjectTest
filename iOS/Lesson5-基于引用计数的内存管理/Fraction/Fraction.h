//
//  Fraction.h
//  Fraction
//
//  Created by wenhuanhuan on 2020/2/17.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 这是一个分数类，计算分数的加减乘数
 */
@interface Fraction : NSObject
{
    int sgn; //表示符号位，1为正数，2为负数
    int fenzi;//分子
    int fenmu;//分母
}

+(id)fractionWithfenzi: (int)n fenmu: (int)m;
-(id)initWithfenzi:(int)n fenmu: (int)m;

-(Fraction *)add: (Fraction *)obj;
-(Fraction *)sub: (Fraction *)obj;
-(Fraction *)mul: (Fraction *)obj;
-(Fraction *)div: (Fraction *)obj;

-(NSString *)desc;

@end

NS_ASSUME_NONNULL_END
