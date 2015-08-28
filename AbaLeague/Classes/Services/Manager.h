//
//  Manager.h
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"
#import "Clubs.h"

@interface Manager : NSObject
+ (Manager *)sharedInstance;
@property NSString *test;
@property NSMutableArray *favoriteClubs;
@property Reachability *reachability;
@property (nonatomic, strong) Clubs *clubSingletonAs;
@end
