//
//  XiaoHei.m
//  oc1111
//
//  Created by wenhuanhuan on 2020/2/11.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "XiaoHei.h"

@implementation XiaoHei

-(void)test1{
    
    NSLog(@"text1%@",NSStringFromClass([self class]));
    [super test3];
}
-(void)test2{
    
    NSLog(@"text2%@",NSStringFromClass([self class]));
    
    [super test2];
}
-(void)test3{
    
    NSLog(@"text3%@",NSStringFromClass([self class]));
}
@end
