//
//  Clubs.m
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import "Clubs.h"

@implementation Clubs
-(instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self != nil) {
    self.name = [dict objectForKey:@"Name"];
    self.city = [dict objectForKey:@"City"];
    self.address = [dict objectForKey:@"Address"];
    self.website = [dict objectForKey:@"Website"];
    self.latitude = [dict objectForKey:@"Latitude"];
    self.longitude = [dict objectForKey:@"Longitude"];
    self.imageUrl = [dict objectForKey:@"ImageUrl"];
    self.arena = [dict objectForKey:@"Arena"];
    self.players = [dict objectForKey:@"Players"];
        self.playersArrayObject = [[NSMutableArray alloc]init];
        for (NSDictionary *playerDict in self.players) {
            Players *player = [[Players alloc]initWithDictionary:playerDict];
            [self.playersArrayObject addObject:player];
        }
    }
    return self;
}
@end
