//
//  TableController.m
//  TestPerform
//
//  Created by wenhuanhuan on 2020/3/7.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "TableController.h"
#import "TableViewModel.h"

@interface TableController ()

@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet UILabel *tapLabel;
@property (nonatomic, strong)TableViewModel * viewModel;
@end

@implementation TableController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
    [self loadData];
    
}

+(instancetype)instance {
    UIStoryboard * storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TableController * vc = [storyBoard instantiateViewControllerWithIdentifier:@"TableController"];
    return vc;
}

-(void)setup {
    self.viewModel = [[TableViewModel alloc] initWithTableView:self.tableview];
    self.viewModel.datas = [NSMutableArray array];
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self.viewModel action:@selector(scrollToBottom)];
    [self.tapLabel addGestureRecognizer:tap];
}

-(void)loadData {
    
    __weak typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
       
        for (int i = 0; i<1000; i++) {
            DataModel * model = [[DataModel alloc] init];
            model.name = [self getName];
            model.className = [self getClassName];
            model.num = [NSString stringWithFormat:@"%d", (i+1)];
            [weakSelf.viewModel.datas addObject:model];
        }
        
        [weakSelf.viewModel performSelectorOnMainThread:@selector(refreshTable) withObject:nil waitUntilDone:YES];
    });
}

-(NSString *)getName {
    NSArray * names = @[@"张青", @"王山", @"陈绿", @"吴水",@"李川", @"赵河", @"周江"];
    int r = arc4random() % [names count];
    return names[r];
}

-(NSString *)getClassName {
    NSArray * classNames = @[@"一年级", @"二年级", @"三年级", @"四年级",@"五年级", @"六年级"];
    int r = arc4random() % [classNames count];
    return classNames[r];
}


@end
