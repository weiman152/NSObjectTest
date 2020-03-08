//
//  ViewController.m
//  TestPerform
//
//  Created by wenhuanhuan on 2020/3/7.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ViewController.h"
#import "TableController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)threadAction:(id)sender {
    NSLog(@"你好呀");
    TableController * tableVC = [TableController instance];
    [self presentViewController:tableVC animated:YES completion:nil];
}

@end
