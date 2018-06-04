//
//  AMPlaylist.h
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AMSong;

@interface AMPlaylist : NSObject

// title
@property (nonatomic, copy) NSString* name;
// array of songs
@property (nonatomic, strong, readonly) NSArray* songs;

// add a song to the array
- (void) addSongsObject:(AMSong *)object;
// removing a song from the array
- (void) removeSongsObject:(AMSong *)object;

// initalizer
-(instancetype) initWithName:(NSString *)name songs:(NSArray *)songs;

@end
