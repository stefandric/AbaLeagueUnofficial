//
//  Players.h
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Players : NSObject
@property (nonatomic, strong) NSString *nameAndLastName;
@property (nonatomic, strong) NSString *position;
@property (nonatomic, strong) NSString *imgUrl;
-(instancetype)initWithDictionary:(NSDictionary *)dict;
@end
