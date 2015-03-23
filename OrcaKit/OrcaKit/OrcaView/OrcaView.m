//
//  OrcaView.m
//  OrcaKit
//
//  Created by Chunlea Ju on 3/23/15.
//  Copyright (c) 2015 Chunlea Ju. All rights reserved.
//

#import "OrcaView.h"

@implementation OrcaView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    CGContextRef context = (CGContextRef) [[NSGraphicsContext currentContext] graphicsPort];
    CGContextSetRGBFillColor(context, rand() % 255 /1000.0,rand() % 255 /1000.0,rand() % 255 /1000.0,1.0);
    CGContextFillRect(context, NSRectToCGRect(dirtyRect));
    
}

- (instancetype)initWithFrame:(NSRect)rect
{
    self = [super initWithFrame:rect];
    
    if (self) {
        [self loadRequest: @"orca://start.html"];
        // TODO:: 临时代码，需要在将来换掉这个地方。
        NSScrollView *scrollView = [[NSScrollView alloc] initWithFrame: CGRectMake(self.bounds.size.width/4, self.bounds.size.height/4, self.bounds.size.width/2, self.bounds.size.height/2)];
        // set the scroll view as the content view of your window
        [self addSubview:scrollView];
    }

    return self;
}

- (void)loadRequest:(NSString *)url{
    NSLog(@"Now fetch %@", url);

    [self setNeedsDisplay:YES];
    
    // Update the window Title with Document's title
    if ([self.delegate respondsToSelector: @selector(setWindowTitle:)]) {
        [self.delegate setWindowTitle: self];
    }
}

// Wrapper the std::string to NSString
- (NSString*)getDocumentTitle{
//    NSString *title= [NSString stringWithCString:document.getTitle().c_str() encoding:NSUTF8StringEncoding];
    return @"This is title";
}

@end
