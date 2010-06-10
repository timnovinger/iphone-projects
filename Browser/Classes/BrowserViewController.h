//
//  BrowerViewController.h
//  Brower
//
//  Created by Tim Novinger on 6/9/10.
//  Copyright My Company 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrowserViewController : UIViewController {
	IBOutlet UIWebView *webView;
	IBOutlet UITextField *addressBar;
	IBOutlet UIActivityIndicatorView *activityIndicator;
}

@property(nonatomic, retain) UIWebView *webView;
@property(nonatomic, retain) UITextField *addressBar;
@property(nonatomic, retain) UIActivityIndicatorView *activityIndicator;

-(IBAction) gotoAddress:(id)sender;
-(IBAction) goForward:(id)sender;
-(IBAction) goBack:(id)sender;
-(IBAction) reload:(id)sender;

@end