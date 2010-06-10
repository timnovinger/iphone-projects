//
//  BrowserAppDelegate.h
//  Browser
//
//  Created by Tim Novinger on 6/9/10.
//  Copyright My Company 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BrowserViewController;

@interface BrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BrowserViewController *viewController;

@end

