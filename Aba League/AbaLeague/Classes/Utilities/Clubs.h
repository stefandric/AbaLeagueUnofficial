//
//  Clubs.h
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Players.h"

@interface Clubs : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *website;
@property (strong, nonatomic) NSString *latitude;
@property (strong, nonatomic) NSString *longitude;
@property (strong, nonatomic) NSString *imageUrl;
@property (strong, nonatomic) NSString *arena;
@property (strong, nonatomic) NSArray *players;
@property (strong, nonatomic) NSMutableArray *playersArrayObject;
@property (strong, nonatomic) Players *playersObject;
-(instancetype)initWithDictionary:(NSDictionary *)dict;
@end
