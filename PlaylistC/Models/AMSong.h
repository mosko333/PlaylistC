//
//  AMSong.h
//  PlaylistC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMSong : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* artist;

- (instancetype) initWithTitle:(NSString *)title artist:(NSString *)artist;

@end
