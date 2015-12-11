//
//  Manager.m
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import "Manager.h"

@implementation Manager
static Manager *sharedObject = nil;

+ (Manager *)sharedInstance {
    static dispatch_once_t _singletonPredicate;
    
    dispatch_once(&_singletonPredicate, ^{
        sharedObject = [[super allocWithZone:nil] init];
    });
    
    return sharedObject;
}

+ (id)allocWithZone:(NSZone *)zone {
    return [self sharedInstance];
}


- (id)init {
    self = [super init];
    if(self != nil) {
        
        
    }
    return self;
}



- (void)checkServiceWithCompletionHandler:(void (^)(BOOL))completion {
    
}
@end
