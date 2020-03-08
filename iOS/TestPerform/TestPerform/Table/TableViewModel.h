//
//  TableViewModel.h
//  TestPerform
//
//  Created by wenhuanhuan on 2020/3/7.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DataModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewModel : NSObject

@property(nonatomic, strong)NSMutableArray * datas;

-(instancetype)initWithTableView: (UITableView *)tableView;

-(void)refreshTable;
-(void)scrollToBottom;

@end

NS_ASSUME_NONNULL_END
