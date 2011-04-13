//
//  SpecialView.m
//  ObjectiveScript
//
//  Created by Derek Gour on 11-01-30.
//  Copyright 2011 Slippysoft. All rights reserved.
//

#import "SpecialView.h"

@implementation SpecialView
@synthesize animation;

@synthesize animationID;


- (void)dealloc 
{
    [super dealloc];
	[animation release];
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event 
{
	    
	[UIView animateWithDuration:0.6
						  delay:0
						options:UIViewAnimationOptionAutoreverse
     
					 animations:^{
                         [UIView setAnimationRepeatCount:1.0];
                         self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, 135.0);
                     }

					 completion:^(BOOL finished){ 
						 self.transform = CGAffineTransformIdentity;
                          [[NSNotificationCenter defaultCenter] postNotificationName:@"VIEW_ANIMATION_COMPLETE" object:self];
                         
                         //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleMapItemModalClosed:) name:MAP_ITEM_MODAL_CLOSED object:mapItemDetailsModalViewController];    
					 }];
}

@end
