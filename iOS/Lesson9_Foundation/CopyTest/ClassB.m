//
//  ClassB.m
//  CopyTest
//
//  Created by wenhuanhuan on 2020/4/16.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ClassB.h"

@interface ClassB()

@property(nonatomic, copy)NSArray * arrayCp;
@property(nonatomic,strong)NSArray * arraySg;

@end

@implementation ClassB

-(void)test {
    NSMutableArray * array = [NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
    self.arrayCp = array;
    self.arraySg = array;
    [array addObject:@"hello"];
    NSLog(@"arrayCp: %@", self.arrayCp);
    NSLog(@"arraySg: %@", self.arraySg);
}

@end
