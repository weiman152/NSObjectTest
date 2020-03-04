//
//  NSObject+Perform.h
//  Lesson8_4
//
//  Created by wenhuanhuan on 2020/3/4.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <AppKit/AppKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Perform)

//传递多个参数
-(id)performSelector:(SEL)aSelector withObjects:(NSArray *)objects;

@end

NS_ASSUME_NONNULL_END
