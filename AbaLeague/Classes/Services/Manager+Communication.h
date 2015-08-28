//
//  Manager+Communication.h
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import "Manager.h"

@interface Manager (Communication)

- (void)downloadClubs:(void (^)(NSArray *clubs))successfulDownloadClubs
           errorClubs:(void (^)(NSError *errorClub))errorDownload;

@end
