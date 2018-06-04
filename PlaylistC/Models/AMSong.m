//
//  AMSong.m
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMSong.h"

@implementation AMSong

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist
{
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
    }
    return self;
}

- (BOOL)isEqual:(id)object
{
    if (![object isKindOfClass:[AMSong class]]) { return NO; }
    AMSong *song = object;
    
    if (song.title != self.title) { return NO; }
    if (song.artist != self.artist) { return NO; }
    
    return YES;
}


@end
