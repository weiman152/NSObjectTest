//
//  ViewController.m
//  TestPerform
//
//  Created by wenhuanhuan on 2020/3/7.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "ViewController.h"
#import "TableController.h"
#import "ScrollController.h"

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

- (IBAction)test1:(id)sender {
    if ([self.view viewWithTag:100] != nil) {
        [[self.view viewWithTag:100] removeFromSuperview];
    } else {
        UIView * view = [self theView];
        [self performSelectorOnMainThread:@selector(addTheView:) withObject:view waitUntilDone:NO];
    }
}

- (IBAction)test2:(id)sender {
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        NSLog(@"哎哟");
        NSLog(@"000%@", [NSRunLoop currentRunLoop].currentMode);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"哈哈哈哈哈哈哈");
            NSLog(@"111%@", [NSRunLoop currentRunLoop].currentMode);
        });
        
        [self performSelectorOnMainThread:@selector(hi) withObject:nil waitUntilDone:YES];
    });
}

- (IBAction)test3:(id)sender {
    ScrollController * scrollVC = [ScrollController instance];
    [self presentViewController:scrollVC animated:YES completion:nil];
}


-(void)hi {
    NSLog(@"嘻嘻嘻嘻嘻嘻---");
}


-(UIView *)theView {
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    view.tag = 100;
    return view;
}

-(void)addTheView: (UIView *)view {
    [self.view addSubview:view];
}

@end
