//
//  MainViewController.h
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Manager.h"
#import "Manager+Communication.h"
#import "SVProgressHUD.h"

@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSArray *allClubs;
@property (weak, nonatomic) IBOutlet UITableView *clubsTableView;
@property (weak, nonatomic) IBOutlet UILabel *mainHeadlineLabel;

@end
