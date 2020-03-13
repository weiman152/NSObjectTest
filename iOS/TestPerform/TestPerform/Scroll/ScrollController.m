//
//  ScrollController.m
//  TestPerform
//
//  Created by wenhuanhuan on 2020/3/10.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ScrollController.h"

@interface ScrollController ()

@end

@implementation ScrollController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"scrollVC : %@", [NSRunLoop currentRunLoop].currentMode);
    
}

+(instancetype)instance {
    UIStoryboard * story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ScrollController * vc = [story instantiateViewControllerWithIdentifier:@"ScrollController"];
    return vc;
}


- (IBAction)test:(id)sender {
    
    [self performSelectorInBackground:@selector(sayHiWithName:) withObject:@"小柳叶"];
    
    [NSThread detachNewThreadSelector:@selector(sayHiWithName:) toTarget:self withObject:@"小青青"];
    
    NSThread * myThread = [[NSThread alloc] initWithTarget:self selector:@selector(sayHiWithName:) object:@"小红红"];
    [myThread start];
    
}

-(void)sayHiWithName: (NSString *)name {
    NSLog(@"你好呀，我的名字是： %@",name);
}

@end
