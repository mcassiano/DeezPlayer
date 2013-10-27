//
//  MenuController.m
//  DeezPlayer
//
//  Created by Matheus C. Candido on 10/24/13.
//  Copyright (c) 2013 Imanel. All rights reserved.
//

#import "MenuController.h"

@implementation MenuController

@synthesize myVC;
@synthesize playResumeButton;

- (id)init
{
    self = [super init];
    if (self) {
        playing = FALSE;
    }
    return self;
}

- (IBAction) play:(id)sender {
    NSString *path;
    
    if (playing) {
        path = [[NSBundle mainBundle] pathForResource:@"play_alt_32x32" ofType:@"png"];
        playing = FALSE;
    }
    else {
        path = [[NSBundle mainBundle] pathForResource:@"pause_24x32" ofType:@"png"];
        playing = TRUE;
    }
    
    [myVC togglePlayPause];
    
    [playResumeButton setImage:[[NSImage alloc] initWithContentsOfFile:path]];
}

- (IBAction) next:(id)sender {
    [myVC playNext];
}

- (IBAction) previous:(id)sender {
    [myVC playPrev];
}

- (IBAction) openProfile:(id)sender {
    [myVC openProfile];
}

- (IBAction) openCharts:(id)sender {
    [myVC openCharts];
}

@end
