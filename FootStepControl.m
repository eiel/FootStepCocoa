//
//  FootStepControl.m
//  footstep
//
//  Created by えいる on 09/11/22.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "FootStepControl.h"
#import "FootStepView.h"

@implementation FootStepControl

- (IBAction)start_stop_toggle:(id)sender{
	[view.rootLayer removeAnimationForKey:@"move"];
}
@end
