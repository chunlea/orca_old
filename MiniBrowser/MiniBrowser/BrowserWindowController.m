//
//  BrowserWindowController.m
//  MiniBrowser
//
//  Created by Chunlea Ju on 3/23/15.
//  Copyright (c) 2015 Chunlea Ju. All rights reserved.
//

#import "BrowserWindowController.h"

@interface BrowserWindowController ()

@end

@implementation BrowserWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    NSLog(@"windowDidLoad");
}


-(id)init {
    self=[super initWithWindowNibName:@"BrowserWindowController"];
    if(self)
        {
        }
    return self;
}

- (void)awakeFromNib
{
    /*_orcaView = [[OrcaView alloc] initWithFrame:[containerView bounds] frameName:nil];
    [_orcaView setAutoresizingMask:(NSViewWidthSizable | NSViewHeightSizable)];
    _orcaView.delegate = self;
    //    [_orcaView setFrameLoadDelegate:self];
    //    [_orcaView setUIDelegate:self];
    //    [_orcaView setResourceLoadDelegate:self];
    //    [_orcaView setPolicyDelegate:self];
    
    [containerView addSubview:_orcaView];*/
    
    NSLog(@"Loaded!");
}


@end
