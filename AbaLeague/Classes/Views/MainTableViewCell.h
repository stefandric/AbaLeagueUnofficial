//
//  MainTableViewCell.h
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Manager.h"
#import "Manager+Communication.h"

@interface MainTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *clubNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *clubCityLabel;
@property (weak, nonatomic) IBOutlet UIImageView *clubImage;
@property (weak, nonatomic) IBOutlet UIButton *favoriteButton;

@end
