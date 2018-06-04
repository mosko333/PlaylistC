//
//  AMMainTableViewController.m
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMMainTableViewController.h"

@interface AMMainTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *playlistTextField;

@end

@implementation AMMainTableViewController

- (IBAction)addPlaylistbtnTapped:(UIBarButtonItem *)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlaylistCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

@end
