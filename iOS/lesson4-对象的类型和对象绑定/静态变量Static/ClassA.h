//
//  ClassA.h
//  静态变量Static
//
//  Created by wenhuanhuan on 2020/2/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *name = @"文欢欢";

@interface ClassA : NSObject

+(void)printName;
+(void)changeName: (NSString *)newName;

-(void)printName;
-(void)changeName: (NSString *)newName;

@end

NS_ASSUME_NONNULL_END
