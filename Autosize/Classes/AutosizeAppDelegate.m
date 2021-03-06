//
//  AutosizeAppDelegate.m
//  Autosize
//
//  Created by Tim Novinger on 07/05/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "AutosizeAppDelegate.h"
#import "AutosizeViewController.h"

@implementation AutosizeAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
