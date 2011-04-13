//
//  BlocksAnimationAppDelegate.h
//  BlocksAnimation
//
//  Created by Shaun O'Connor on 13/04/11.
//  Copyright 2011 Whybin \ TBWA \ Tequila. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BlocksAnimationViewController;

@interface BlocksAnimationAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet BlocksAnimationViewController *viewController;

@end
