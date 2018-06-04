//
//  AMPlaylistController.m
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMPlaylistController.h"
#import "AMPlaylist.h"
#import "AMSong.h"

@interface AMPlaylistController()
// private interface
@property (nonatomic, strong, readwrite) NSMutableArray *internalPlaylists;

@end

@implementation AMPlaylistController

+ (AMPlaylistController *)shared
{
    static AMPlaylistController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [AMPlaylistController new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalPlaylists = [NSMutableArray new];
    }
    return self;
}


#pragma mark - CRUD
// create a playlist
- (void) createPlaylistWithTitle:(NSString *)title
{
    AMPlaylist *newPlaylist = [[AMPlaylist alloc] initWithName:title songs:NSMutableArray.new];
    [self.internalPlaylists addObject:newPlaylist];
}
// create a song
- (void) createSongWithTitle:(NSString *)title
                    andArist:(NSString *)artist
                  toPlaylist:(AMPlaylist *)playlist
{
    AMSong *newSong = [[AMSong alloc]initWithTitle:title artist:artist];
    [playlist addSongsObject:newSong];
}
// delete a playlist
- (void) deletePlaylist:(AMPlaylist *)playlist
{
    [self.internalPlaylists removeObject:playlist];
}
// delete a song
- (void) deleteSong:(AMSong *)song
       fromPlaylist:(AMPlaylist *)playlist
{
    [playlist removeSongsObject:song];
}



#pragma mark - properties
- (NSArray *)playlists
{
    return self.internalPlaylists;
}

@end
