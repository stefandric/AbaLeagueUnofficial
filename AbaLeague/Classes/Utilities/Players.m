//
//  Players.m
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import "Players.h"

@implementation Players


-(instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self != nil) {
        self.nameAndLastName = [dict objectForKey:@"Player"];
        self.position = [dict objectForKey:@"Position"];
        self.imgUrl = [dict objectForKey:@"Img"];
        
    }
    return self;
}


@end
