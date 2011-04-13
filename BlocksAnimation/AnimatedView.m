//
//  AnimatedView.h
//  BlocksAnimation
//
//  Created by Shaun O'Connor on 13/04/11.
//

#import "AnimatedView.h"

@implementation AnimatedView

@synthesize animation;

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
                         self.transform = CGAffineTransformMakeScale(0.1, 0.1);
                     }

					 completion:^(BOOL finished){ 
						 self.transform = CGAffineTransformIdentity;
                          [[NSNotificationCenter defaultCenter] postNotificationName:@"VIEW_ANIMATION_COMPLETE" object:self];
					 }];
}

@end
