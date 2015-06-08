//
//  ListingCell.h
//  TXmap
//
//  Created by 扶摇直上 on 15/6/3.
//  Copyright (c) 2015年 扶摇直上. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfessorView.h"
@interface ListingCell : UITableViewCell
@property(nonatomic,strong)UILabel * numberLabel;
@property(nonatomic,strong)UIImageView * backImage;
@property(nonatomic,strong)UILabel * contentLabel;
@property(nonatomic,strong)UIButton * changeButton;
@property(nonatomic,strong)ProfessorView * professor1;
@property(nonatomic,strong)ProfessorView * professor2;
@property(nonatomic,strong)ProfessorView * professor3;
@property(nonatomic,strong)ProfessorView * professor4;
@property(nonatomic,strong)ProfessorView * professor5;

@end
