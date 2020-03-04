//
//  ClassA.h
//  访问器get和set
//
//  Created by wenhuanhuan on 2020/2/12.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassA : NSObject
{
    int age;
    NSString * name;
    NSArray * scores;
}

- (int)age;
- (void)setAge:(int)newValue;

-(void)printA;

@end

NS_ASSUME_NONNULL_END
