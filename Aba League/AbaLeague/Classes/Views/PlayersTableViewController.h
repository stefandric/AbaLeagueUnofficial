//
//  PlayersTableViewController.h
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Clubs.h"
#import "Players.h"
#import "Manager.h"
#import "Manager+Communication.h"

@interface PlayersTableViewController : UITableViewController
@property Clubs *clubDetails;
@property Players *players;
@end
