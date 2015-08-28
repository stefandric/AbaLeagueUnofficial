//
//  MainTableViewCell.m
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import "MainTableViewCell.h"
#import "MainViewController.h"
@implementation MainTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)favoriteAdd:(id)sender {
    MainViewController *mainVC = [[MainViewController alloc]init];
    
}
@end
