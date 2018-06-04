//
//  AMDetailViewController.h
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AMPlaylist;

@interface AMDetailViewController : UITableViewController

@property (nonatomic, strong) AMPlaylist *playlist;

@end
