//
//  FootStepView.h
//  footstep
//
//  Created by えいる on 09/11/16.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <QuartzCore/CoreAnimation.h>

@interface FootStepView : NSView {
	CALayer* rootLayer;
	CALayer* bgLayer;
	CALayer* fgLayer;
}
- (IBAction)toggle_background:(id)sender;
- (IBAction)toggle_object_size:(id)sender;
- (IBAction)toggle_filter:(id)sender;

@end
