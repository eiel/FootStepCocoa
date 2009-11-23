//
//  FootStepView.m
//  footstep
//
//  Created by えいる on 09/11/16.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "FootStepView.h"
#import "BackGroundLayerDelegate.h"
#import "ForeGroundLayerDelegate.h"

@implementation FootStepView

- (void)awakeFromNib {
	rootLayer = [CALayer layer];
	rootLayer.frame = CGRectMake(0, 0, 320, 180);
	rootLayer.borderWidth = 2.0;
	rootLayer.backgroundColor = CGColorGetConstantColor(kCGColorWhite);
	[self setWantsLayer:YES];

	bgLayer = [CALayer layer];
	bgLayer.frame = rootLayer.frame;
	bgLayer.delegate = [[BackGroundLayerDelegate alloc] init];
	[bgLayer setNeedsDisplay];
	[rootLayer addSublayer:bgLayer];

	fgLayer = [CALayer layer];
	fgLayer.frame = CGRectMake(-20, 0, 20, 180);
	fgLayer.delegate = [[ForeGroundLayerDelegate alloc] init];
	[fgLayer setNeedsDisplay];
	[rootLayer addSublayer:fgLayer];
	
	CABasicAnimation *theAnimation;
	theAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
	theAnimation.fromValue = [NSValue valueWithPoint:NSMakePoint(-10, 90)];
	theAnimation.toValue = [NSValue valueWithPoint:NSMakePoint(330,90)];
	theAnimation.duration = 8.0;
	theAnimation.repeatCount = 1e100f;
	[fgLayer addAnimation:theAnimation forKey:@"move"];
		
//	[rootLayer setNeedsDisplay];
	self.layer = rootLayer;
	
}

- (IBAction)toggle_object_size:(id)sender
{
	float obj_size = 20;
	if (fgLayer.frame.size.width < 30) {
		obj_size = 30;
	}
	fgLayer.frame = NSMakeRect(0, -20, obj_size, 180);
	[fgLayer setNeedsDisplay];
}

- (IBAction)toggle_filter:(id)sender
{
	if (rootLayer.filters == nil) {
		CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
		[filter setDefaults];
		[filter setName:@"pulseFilter"];
		[filter setValue:[NSNumber numberWithFloat:5.0] forKey:@"inputRadius"];
		[rootLayer setFilters:[NSArray arrayWithObject:filter]];
	}else {
		[rootLayer setFilters:nil];
	}

}


- (IBAction)toggle_background:(id)sender{
	if (bgLayer.delegate) {
		[bgLayer.delegate release];
		bgLayer.delegate = nil;		
	}else {
		bgLayer.delegate = [[BackGroundLayerDelegate alloc] init];
	}
	[bgLayer setNeedsDisplay];
}

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
	// Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    // Drawing code here.

}


@end
