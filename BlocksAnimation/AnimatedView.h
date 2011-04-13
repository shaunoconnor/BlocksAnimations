//
//  SpecialView.h
//  ObjectiveScript
//
//  Created by Derek Gour on 11-01-30.
//  Copyright 2011 Slippysoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpecialView : UIView {
	void (^animation)(void);
    
    uint animationID;
}

@property (nonatomic, copy) void (^animation)(void);

@property (nonatomic) uint animationID;

@end
