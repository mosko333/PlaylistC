//
//  AMMainTableViewController.m
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMMainTableViewController.h"
#import "AMPlaylistController.h"
#import "AMPlaylist.h"
#import "AMDetailViewController.h"

@interface AMMainTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *playlistTextField;

@end

@implementation AMMainTableViewController

- (IBAction)addPlaylistbtnTapped:(UIBarButtonItem *)sender {
    if(![self.playlistTextField.text isEqualToString:@""]) {
        
        [[AMPlaylistController shared] createPlaylistWithTitle:self.playlistTextField.text];
        [self.tableView reloadData];
        self.playlistTextField.text = @"";
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [[[AMPlaylistController shared] playlists] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlaylistCell" forIndexPath:indexPath];
    
    AMPlaylist *playlist = AMPlaylistController.shared.playlists[indexPath.row];
    cell.textLabel.text = playlist.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu songs", playlist.songs.count];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        AMPlaylist *playlistToDelete = AMPlaylistController.shared.playlists[indexPath.row];
        [AMPlaylistController.shared deletePlaylist:playlistToDelete];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ToDetail.VC"]) {
        // get the right viewController
        AMPlaylist *selectedPlaylist = AMPlaylistController.shared.playlists[self.tableView.indexPathForSelectedRow.row];
        // get the next VC
        AMDetailViewController *detailVC = segue.destinationViewController;
        // pass the playlist to the VC
        detailVC.playlist = selectedPlaylist;
    }
}

@end
