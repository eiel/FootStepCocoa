//
//  ForeGroundLayerDelegate.m
//  footstep
//
//  Created by えいる on 09/11/22.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ForeGroundLayerDelegate.h"


@implementation ForeGroundLayerDelegate


- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
	NSGraphicsContext *nsGraphicsContext;
	nsGraphicsContext = [NSGraphicsContext graphicsContextWithGraphicsPort:ctx
																   flipped:NO];
	[NSGraphicsContext saveGraphicsState];
	[NSGraphicsContext setCurrentContext:nsGraphicsContext];
	
	
	[[NSColor yellowColor] set];
	NSRect aRect = NSMakeRect(0.0, 50.0, 80.0, 20.0);
	NSBezierPath *thePath=[NSBezierPath bezierPathWithRect:aRect];
	[thePath fill];
	[[NSColor blueColor] set];
	aRect = NSMakeRect(0.0, 110.0, 80.0, 20.0);
	thePath=[NSBezierPath bezierPathWithRect:aRect];
	[thePath fill];
	
	
	[NSGraphicsContext restoreGraphicsState];
}
@end
