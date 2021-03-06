//
//  BrowserViewController.m
//  Browser
//
//  Created by Tim Novinger on 6/9/10.
//  Copyright My Company 2010. All rights reserved.
//

#import "BrowserViewController.h"

@implementation BrowserViewController

@synthesize webView, addressBar, activityIndicator;


/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


// Implement Address Bar
- (IBAction)gotoAddress:(id) sender {
	
	// make sure url starts with “http://”
	if (! [addressBar.text hasPrefix:@"http://"]) {
		[addressBar setText:[NSString stringWithFormat:@"http://%@", addressBar.text]];
	}
	
	NSURL *url = [NSURL URLWithString:[addressBar text]];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	// Load the request in the UIWebView
	[webView loadRequest:requestObj];
	[addressBar resignFirstResponder];
}


// Implement activityIndicator animation
- (void)webViewDidStartLoad:(UIWebView *)webView {
	[activityIndicator startAnimating];
}


- (void)webViewDidFinishLoad:(UIWebView *)webView {
	[addressBar setText:self.webView.request.URL.absoluteString];
	[activityIndicator stopAnimating];
}


// Load links clicked on by user
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType {
	
	if (navigationType == UIWebViewNavigationTypeLinkClicked) {
		NSURL *URL = [request URL];
		if ([[URL scheme] isEqualToString:@"http"]) {
			[addressBar setText:[URL absoluteString]];
			[self gotoAddress:nil];
		}
		return NO;
	}
	return YES;
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait ||
			interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown ||
			interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
			interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
