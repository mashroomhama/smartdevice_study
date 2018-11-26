//
//  TVSCustomCell.m
//  TableViewSample
//
//  Created by 武田 祐一 on 2013/04/23.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "TVSCustomCell.h"

@implementation TVSCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(CGFloat)calculateCellHeightWithText:(NSString *)text
{
    // TODO : UILabel の高さ計算 [2]
    // HINT : (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode

//    CGSize size;
//    
//
//    CGFloat top = 20.0f;
//    CGFloat bottom = 20.0f;
    NSLog(@"%@",text);
    // 表示最大幅・高さ
    CGSize maxSize = CGSizeMake(320, CGFLOAT_MAX);
    
    // 文字列のフォント種類、サイズなど属性を指定
    NSDictionary *attrDic = @{NSFontAttributeName:[UIFont systemFontOfSize:33.0]};
    
    CGRect rect = [text boundingRectWithSize:maxSize
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attrDic
                                     context:nil];
    NSLog(@"%lf",rect.size.height);
    return rect.size.height;
    
}

@end
