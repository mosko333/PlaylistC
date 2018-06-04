//
//  AMPlaylist.m
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMPlaylist.h"

@interface AMPlaylist()
// private interface for this class

@property (nonatomic, strong) NSMutableArray *internalSongs;

@end

@implementation AMPlaylist

// add a song to the array
- (void) addSongsObject:(AMSong *)object
{
    [self.internalSongs addObject:object];
}
// removing a song from the array
- (void) removeSongsObject:(AMSong *)object
{
    [self.internalSongs removeObject:object];
}

// initalizer
-(instancetype) initWithName:(NSString *)name songs:(NSArray *)songs{
    self = [super init];
    if (self) {
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

- (NSArray *)songs
{
    // computed, read-only property that allows other classes to READ the internal songs array (but not write to theat array)
    return self.internalSongs;
    
}

@end
