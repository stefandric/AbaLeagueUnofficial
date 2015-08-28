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

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Details methods
//-(void)showAllDetails {
//    NSURL *urlHnk = [NSURL URLWithString:self.clubDetail.imageUrl];
//    self.clubDetailNameLabel.text = self.clubDetail.name;
//    [self.clubDetailImage hnk_setImageFromURL:urlHnk];
//}
//- (IBAction)toPlayersPressed:(id)sender {
//    
//    [self performSegueWithIdentifier:@"toPlayers" sender:self];
//}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PlayersTableViewController *players = [segue destinationViewController];
    players.clubDetails = self.clubDetail;
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
