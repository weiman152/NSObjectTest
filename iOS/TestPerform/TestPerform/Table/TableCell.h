//
//  TableCell.h
//  TestPerform
//
//  Created by wenhuanhuan on 2020/3/7.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableCell : UITableViewCell

+(instancetype)cellWithTableview: (UITableView *)tableview indexpath: (NSIndexPath *)indexpath;

-(void)setup: (DataModel *)model;

@end

NS_ASSUME_NONNULL_END
