//
//  CA.h
//  4_4实例变量的数据封装
//
//  Created by wenhuanhuan on 2019/6/18.
//  Copyright © 2019 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "A.h"

NS_ASSUME_NONNULL_BEGIN

@interface CA : A
{
    int c;
}

-(void)printA: (A *) aaa;

@end

NS_ASSUME_NONNULL_END
