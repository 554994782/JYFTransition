//
//  TableViewCell.m
//  JYFTransition
//
//  Created by jiangyunfeng on 2018/5/28.
//  Copyright © 2018年 jiangyunfeng. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;

@end

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)setTitle:(NSString *)title subTitle:(NSString *)subTitle {
    self.titleLabel.text = title;
    self.subTitleLabel.text = subTitle;
    self.subTitleLabel.font = [UIFont systemFontOfSize:13];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
