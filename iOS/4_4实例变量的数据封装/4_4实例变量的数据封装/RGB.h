//
//  RGB.h
//  4_4实例变量的数据封装
//
//  Created by wenhuanhuan on 2019/6/18.
//  Copyright © 2019 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RGB : NSObject
{
    unsigned char red, green, blue;
}

- (instancetype) initWithRed: (int) r green: (int) g blue: (int) b;
- (id) blendColor: (RGB *) color;
- (void) print;

@end

NS_ASSUME_NONNULL_END
