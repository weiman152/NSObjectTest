//
//  NSObject+Perform.m
//  Lesson8_4
//
//  Created by wenhuanhuan on 2020/3/4.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "NSObject+Perform.h"

#import <AppKit/AppKit.h>


@implementation NSObject (Perform)

-(id)performSelector:(SEL)aSelector withObjects:(NSArray *)objects {
    
    /**
     根据SEL去实例化方法签名NSMethodSignature（方法签名中有方法的名称，参数和返回值）
     */
    NSMethodSignature * sign = [[self class] instanceMethodSignatureForSelector:aSelector];
    if (sign == nil) {
        @throw [NSException exceptionWithName:@"签名异常" reason:@"没有这个方法" userInfo:nil];
        return nil;
    }
    
    //根据方法签名拿到方法的信息
    NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:sign];
    [invocation setTarget:self];
    [invocation setSelector:aSelector];
    
    //签名中方法参数的个数，内部包含了self和_cmd，所以参数从第3个开始
    NSInteger paramCount = sign.numberOfArguments - 2;
    NSInteger resultParamCount = MIN(paramCount, objects.count);
    
    for (NSInteger i = 0; i < resultParamCount; i++) {
        id object = objects[i];
        [invocation setArgument:&object atIndex:i+2];
    }
    [invocation invoke];
    
    //处理返回值
    id callBack = nil;
    if (sign.methodReturnLength > 0) {
        [invocation getReturnValue:&callBack];
    }
    return callBack;
}

@end
