//
//  Hello_World_AppDelegate.h
//  Hello World!
//
//  Created by Tim Novinger on 07/05/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hello_World_ViewController;

@interface Hello_World_AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Hello_World_ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Hello_World_ViewController *viewController;

@end

