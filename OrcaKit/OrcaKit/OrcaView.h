//
//  OrcaView.h
//  OrcaKit
//
//  Created by Chunlea Ju on 3/23/15.
//  Copyright (c) 2015 Chunlea Ju. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol OrcaViewDelegate;

@interface OrcaView : NSView{
    NSScrollView *scrollView;
}

@property (weak) id <OrcaViewDelegate> delegate;

- (instancetype)initWithFrame:(NSRect)rect;

- (NSString*)getDocumentTitle;

- (void)loadRequest:(NSString *)url;

@end

@protocol OrcaViewDelegate <NSObject>

@optional
- (void) setWindowTitle: (OrcaView *) orcaView;

@end // OrcaViewDelegate
