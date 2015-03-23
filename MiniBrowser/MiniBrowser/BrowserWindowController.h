//
//  BrowserWindowController.h
//  MiniBrowser
//
//  Created by Chunlea Ju on 3/23/15.
//  Copyright (c) 2015 Chunlea Ju. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <OrcaKit/OrcaKit.h>

@interface BrowserWindowController : NSWindowController <OrcaViewDelegate> {
    IBOutlet NSButton *goButton;
    IBOutlet NSTextField *urlText;
    IBOutlet NSView *containerView;
    
    OrcaView *_orcaView;

}

- (void)loadURLString:(NSString *)urlString;
- (void)applicationTerminating;
- (IBAction)fetch:(id)sender;
@end
