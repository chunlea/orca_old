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
    _orcaView = [[OrcaView alloc] initWithFrame:[containerView bounds]];
    [_orcaView setAutoresizingMask:(NSViewWidthSizable | NSViewHeightSizable)];
    _orcaView.delegate = self;
    
    [containerView addSubview:_orcaView];
    
    [urlText setTarget:self];
    [urlText setAction:@selector(fetch:)];
    
    NSLog(@"Loaded!");
}

- (void)setWindowTitle:(OrcaView *)orcaView {
    self.window.title = orcaView.getDocumentTitle;
}

- (void)loadURLString:(NSString *)urlString
{
    [urlText setStringValue:urlString];
    [self fetch:nil];
}

- (IBAction)fetch:(id)sender
{
    if ([urlText.stringValue length]>0) {
        [_orcaView loadRequest:urlText.stringValue];
    }
}

- (void)applicationTerminating
{
}
@end
