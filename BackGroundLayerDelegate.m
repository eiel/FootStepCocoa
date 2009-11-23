//
//  BackGroundLayerDelegate.m
//  footstep
//
//  Created by えいる on 09/11/22.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "BackGroundLayerDelegate.h"


@implementation BackGroundLayerDelegate
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
	NSGraphicsContext *nsGraphicsContext;
	nsGraphicsContext = [NSGraphicsContext graphicsContextWithGraphicsPort:ctx
																   flipped:NO];
	[NSGraphicsContext saveGraphicsState];
	[NSGraphicsContext setCurrentContext:nsGraphicsContext];
	

	[[NSColor blackColor] set];
	for(int i=0;i<12;i++){
		NSRect aRect = NSMakeRect(50.0+i*20,0.0,10.0,180.0);
		NSBezierPath *thePath = [NSBezierPath bezierPathWithRect:aRect];
		[thePath fill];
	}
	
	[NSGraphicsContext restoreGraphicsState];
}
@end
