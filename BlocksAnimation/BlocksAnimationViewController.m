//
//  BlocksAnimationViewController.m
//  BlocksAnimation
//
//  Created by Shaun O'Connor on 13/04/11.
//

#import "BlocksAnimationViewController.h"

@implementation BlocksAnimationViewController


- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleViewAnimationComplete:) name:@"VIEW_ANIMATION_COMPLETE" object:animatedView];    
}

-(void)handleViewAnimationComplete:(NSNotification*)note
{
    NSLog(@" [ handleViewAnimationComplete ] ");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
