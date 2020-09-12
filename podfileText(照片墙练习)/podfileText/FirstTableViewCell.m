//
//  FirstTableViewCell.m
//  podfileText
//
//  Created by 张立远 on 2020/9/11.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "FirstTableViewCell.h"
#import "Masonry.h"

@implementation FirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _firstImage = [[UIImageView alloc] init];
    [self.contentView addSubview:_firstImage];
    
    _secondImage = [[UIImageView alloc] init];
    [self.contentView addSubview:_secondImage];

    _thirdImage = [[UIImageView alloc] init];
    [self.contentView addSubview:_thirdImage];
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
//    [self layoutIfNeeded];
    [_firstImage mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.contentView).offset(10);
                make.top.equalTo(self.contentView).offset(10);
                make.width.equalTo(self.contentView).multipliedBy(0.3);//总视图的0.3
        make.height.equalTo(self.contentView).multipliedBy(0.9);//总视图的0.5
    }];
    
    [_secondImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_firstImage.mas_right).offset(10);
        make.top.equalTo(self.contentView).offset(10);
        make.width.equalTo(self.contentView).multipliedBy(0.3);
        make.height.equalTo(self.contentView).multipliedBy(0.9);
        
    }];
    
    [_thirdImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_secondImage.mas_right).offset(10);
        make.top.equalTo(self.contentView).offset(10);
        make.width.equalTo(self.contentView).multipliedBy(0.3);
        make.height.equalTo(self.contentView).multipliedBy(0.9);
    }];
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
