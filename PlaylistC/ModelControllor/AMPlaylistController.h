//
//  AMPlaylistController.h
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AMPlaylist;
@class AMSong;

@interface AMPlaylistController : NSObject

// shared instance
+ (AMPlaylistController *)shared;

// source of truth
// playlists array
@property (nonatomic, strong, readonly) NSArray *playlists;

// CRUD
// create a playlist
- (void) createPlaylistWithTitle:(NSString *)title;
// create a song
- (void) createSongWithTitle:(NSString *)title
                    andArist:(NSString *)artist
                  toPlaylist:(AMPlaylist *)playlist;
// delete a playlist
- (void) deletePlaylist:(AMPlaylist *)playlist;
// delete a song
- (void) deleteSong:(AMSong *)song
       fromPlaylist:(AMPlaylist *)playlist;

@end
