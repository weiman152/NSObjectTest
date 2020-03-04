//
//  ClassCZ.h
//  重载Test
//
//  Created by wenhuanhuan on 2020/2/12.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassCZ : NSObject
/**
 OC中方法名不包含返回值、参数的类型，所以仅仅是返回值不同或者参数类型不同，
 并不能区分不同的方法。
 以下三个方法，如果没有后面的intB，floatB,doubleB，那么，
 编译器就会报错，认为方法名相同。
 */
// 方法名是： maxValue: intB
-(int)maxValue: (int)a intB: (int) b;
// 方法名是： maxValue: floatB
-(float)maxValue: (float)a floatB: (float)b;
// 方法名是： maxValue: doubleB
-(double)maxValue: (double)a doubleB: (double)b;

@end

NS_ASSUME_NONNULL_END
