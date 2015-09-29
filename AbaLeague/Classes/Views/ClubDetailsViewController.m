//
//  ClubDetailsViewController.m
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import "ClubDetailsViewController.h"
#import "Haneke.h"
#import "PlayersTableViewController.h"

@interface ClubDetailsViewController ()

@end

@implementation ClubDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showAllDetails];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Details methods
-(void)showAllDetails {
    self.clubDetail = [Manager sharedInstance].clubSingletonAs;
    self.clubDetailNameLabel.text = self.clubDetail.name;
    NSURL *hnkURL = [NSURL URLWithString:self.clubDetail.imageUrl];
    [self.clubDetailImage hnk_setImageFromURL:hnkURL];
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 PlayersTableViewController *players = [segue destinationViewController];
 players.clubDetails = self.clubDetail;
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
- (IBAction)backPressed:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
