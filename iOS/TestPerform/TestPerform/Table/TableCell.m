//
//  TableCell.m
//  TestPerform
//
//  Created by wenhuanhuan on 2020/3/7.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "TableCell.h"

@interface TableCell()

@property (weak, nonatomic) IBOutlet UILabel *numLabel;
@property (weak, nonatomic) IBOutlet UILabel *classLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation TableCell

+(instancetype)cellWithTableview: (UITableView *)tableview indexpath: (NSIndexPath *)indexpath {
     static NSString * indentifier = @"TableCell";
    TableCell * cell = [tableview dequeueReusableCellWithIdentifier:indentifier];
    if (cell == nil) {
        NSArray * nibs = [[NSBundle mainBundle] loadNibNamed:indentifier owner:self options:nil];
        cell = [nibs objectAtIndex:0];
    }
    return cell;
}

-(void)setup:(DataModel *)model {
    self.numLabel.text = model.num;
    self.classLabel.text = model.className;
    self.nameLabel.text = model.name;
}

@end
