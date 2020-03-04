//
//  Person.h
//  4_4访问器(getter和setter)
//
//  Created by wenhuanhuan on 2019/6/19.
//  Copyright © 2019 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    // 在此大括号中声明的变量都是protect的，如果需要外接访问，需要加上@public或者@package访问控制符，保证对外界是可见的。
    
    @public NSString * name;
    @private int age;
    @public NSString * sex;
    @public int  score;
}
// xcode4.5以后，使用@property声明属性，自动生成getter和setter方法
//和一个_interest的变量
@property(nonatomic, copy)NSString * interest;
// 声明一个只读的属性
@property(nonatomic, copy, readonly)NSString * telephone;

//name属性给出getter和setter方法，外部对name属性具有读写权限。
-(NSString *) name;
-(void)setName: (NSString *)newValue;
//sex属性只给getter方法，外部只有读权限。
-(NSString *)sex;
// 类内部使用的测试
-(void)test ;

-(instancetype)initWithPhone: (NSString *)phone;

@end

NS_ASSUME_NONNULL_END
