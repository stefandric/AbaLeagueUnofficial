//
//  Manager+Communication.m
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import "Manager+Communication.h"
#import "AFNetworking.h"
#import "Clubs.h"

@implementation Manager (Communication)

- (void)downloadClubs:(void (^)(NSArray *clubs))successfulDownloadClubs
           errorClubs:(void (^)(NSError *errorClub))errorDownload {
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"https://api.myjson.com/bins/4smly" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
        NSArray *checkArray = [responseObject objectForKey:@"Clubs"];
        if ([[NSUserDefaults standardUserDefaults] arrayForKey:@"Clubs"] != checkArray) {
            [[NSUserDefaults standardUserDefaults] setObject:checkArray forKey:@"Clubs"];
        }
        NSArray *tempClubs = [[NSUserDefaults standardUserDefaults]arrayForKey:@"Clubs"];
        NSMutableArray *allTempClubs = [[NSMutableArray alloc]init];
        for (NSDictionary *clubDict in tempClubs) {
            Clubs *tClub = [[Clubs alloc]initWithDictionary:clubDict];
            [allTempClubs addObject:tClub];
            
        }
        
        successfulDownloadClubs(allTempClubs);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        errorDownload(error);
    }];
    
}

@end
