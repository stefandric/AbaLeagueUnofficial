//
//  ClubDetailsViewController.h
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Clubs.h"
#import "Manager.h"
#import "Manager+Communication.h"

@interface ClubDetailsViewController : UIViewController
@property Clubs *clubDetail;
@property (weak, nonatomic) IBOutlet UILabel *clubDetailNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *clubDetailImage;
@end
