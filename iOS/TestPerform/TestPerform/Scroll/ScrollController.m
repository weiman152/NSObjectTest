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
    
}

@end
