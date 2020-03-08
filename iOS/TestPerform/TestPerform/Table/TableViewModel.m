//
//  TableViewModel.m
//  TestPerform
//
//  Created by wenhuanhuan on 2020/3/7.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "TableViewModel.h"
#import "TableCell.h"

@interface TableViewModel()<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong)UITableView * tableView;

@end

@implementation TableViewModel

-(instancetype)initWithTableView:(UITableView *)tableView {
    if (self = [super init]) {
        tableView.dataSource = self;
        tableView.delegate = self;
        self.tableView = tableView;
    }
    return self;
}

-(void)refreshTable {
    
    [self.tableView reloadData];
}

-(void)scrollToBottom {
    NSIndexPath * indexP = [NSIndexPath indexPathForRow:self.datas.count-1 inSection:0];
    [self.tableView scrollToRowAtIndexPath:indexP atScrollPosition:UITableViewScrollPositionBottom animated:YES];
}

#pragma mark UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableCell * cell = [TableCell cellWithTableview:tableView indexpath:indexPath];
    [cell setup:self.datas[indexPath.row]];
    
    return cell;
}

#pragma mark UITableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

@end
