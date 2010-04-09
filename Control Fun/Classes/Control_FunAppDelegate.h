//
//  Control_FunAppDelegate.h
//  Control Fun
//
//  Created by Tim Novinger on 07/05/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Control_FunViewController;

@interface Control_FunAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Control_FunViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Control_FunViewController *viewController;

@end

