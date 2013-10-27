//
//  MenuController.h
//  DeezPlayer
//
//  Created by Matheus C. Candido on 10/24/13.
//  Copyright (c) 2013 Imanel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainWindowController.h"

@interface MenuController : NSMenu {
    MainWindowController *myVC;
    NSToolbarItem *playResumeButton;
    BOOL playing;
}

@property IBOutlet MainWindowController *myVC;
@property IBOutlet NSToolbarItem *playResumeButton;

- (IBAction) play:(id)sender;
- (IBAction) next:(id)sender;
- (IBAction) previous:(id)sender;
- (IBAction) openProfile:(id)sender;
- (IBAction) openCharts:(id)sender;

@end
