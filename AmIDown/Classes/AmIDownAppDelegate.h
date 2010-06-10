//
//  AmIDownAppDelegate.h
//  AmIDown
//
//  Created by Tim Novinger on 4/12/10.
//  Copyright The Nichols Company 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AmIDownAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
