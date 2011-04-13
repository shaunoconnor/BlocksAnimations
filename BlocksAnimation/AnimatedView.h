//
//  AnimatedView.h
//  BlocksAnimation
//
//  Created by Shaun O'Connor on 13/04/11.
//

#import <UIKit/UIKit.h>

@interface AnimatedView : UIView 
{
	void (^animation)(void);
}

@property (nonatomic, copy) void (^animation)(void);

@end
