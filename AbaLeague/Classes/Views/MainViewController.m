//
//  MainViewController.m
//  AbaLeague
//
//  Created by Stefan on 8/25/15.
//  Copyright (c) 2015 Stefan Andric. All rights reserved.
//

#import "MainViewController.h"
#import "MainTableViewCell.h"
#import "Clubs.h"
#import "Haneke.h"
#import "ClubDetailsViewController.h"

@interface MainViewController ()
@property Clubs *club;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SVProgressHUD show];
    [[Manager sharedInstance]downloadClubs:^(NSArray *clubs) {
        self.allClubs = [[NSArray alloc]initWithArray:clubs];
        [self.clubsTableView reloadData];
        [SVProgressHUD dismiss];
    } errorClubs:^(NSError *errorClub) {
        NSLog(@"Error %@", errorClub);
    }];
    
    self.mainHeadlineLabel.text = @"ABA League Season 2015/2016";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allClubs.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MainTableViewCell *cell = [self.clubsTableView dequeueReusableCellWithIdentifier:@"mainCell" forIndexPath:indexPath];
    if (indexPath.row%2 == 0) {
        cell.backgroundColor = [UIColor whiteColor];
    }
    else {
       cell.backgroundColor = [UIColor colorWithRed:234.0f/255.0f green:234.0f/255.0f blue:234.0f/255.0f alpha:0.2];
    }
    Clubs *club = [[Clubs alloc]init];
    club = self.allClubs[indexPath.row];
    NSString *urlHnk = club.imageUrl;
    NSURL *hnkUrl = [NSURL URLWithString:urlHnk];
    cell.clubNameLabel.text = club.name;
    cell.clubCityLabel.text = club.city;
    [cell.clubCityLabel sizeToFit];
    [cell.clubNameLabel sizeToFit];
    [cell.clubImage hnk_setImageFromURL:hnkUrl];
    
    cell.favoriteButton.tag = indexPath.row;
    
    
    if ([[[Manager sharedInstance]favoriteClubs] containsObject:club]) {
        [cell.favoriteButton setImage:[UIImage imageNamed:@"favoriteRemove"] forState:UIControlStateNormal];
    }
    
    else {
        [cell.favoriteButton setImage:[UIImage imageNamed:@"favoriteAdd"] forState:UIControlStateNormal];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [Manager sharedInstance].clubSingletonAs = self.allClubs[indexPath.row];
    
    
    [self performSegueWithIdentifier:@"clubDetails" sender:self];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (IBAction)favoriteButtonPressed:(id)sender {
    
    }

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
}


@end
