//
//  main.m
//  OCTest
//
//  Created by wenhuanhuan on 2020/2/11.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XiaoHei.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //继承关系测试
        
        Anmial *an = [[Anmial alloc]init];
        
        Dog *dg = [[Dog alloc]init];
        
        XiaoHei *hei = [[XiaoHei alloc]init];
        
        [an test1];
        [an test2];
        [an test3];
        
        [dg test1];
        [dg test2];
        [dg test3];
        
        [hei test1];
        [hei test2];
        [hei test3];
    }
    return 0;
}
