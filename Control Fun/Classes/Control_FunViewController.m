//
//  Control_FunViewController.m
//  Control Fun
//
//  Created by Tim Novinger on 07/05/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Control_FunViewController.h"

@implementation Control_FunViewController
@synthesize nameField;
@synthesize numberField;
@synthesize sliderLabel;
@synthesize topSwitch;
@synthesize bottomSwitch;
@synthesize switchView;
@synthesize easyButton;

- (void)viewDidLoad
{
	UIImage *buttonImageNormal = [UIImage imageNamed:@"whiteButton.png"];
	UIImage *stretchableButtonImageNormal = [buttonImageNormal stretchableImageWithLeftCapWidth:12 topCapHeight:0];
	[easyButton setBackgroundImage:stretchableButtonImageNormal forState:UIControlStateNormal];
	
	UIImage *buttonImagePressed = [UIImage imageNamed:@"blueButton.png"];
	UIImage *stretchableButtonImagePressed = [buttonImagePressed stretchableImageWithLeftCapWidth:12 topCapHeight:0];
	[easyButton setBackgroundImage:stretchableButtonImagePressed forState:UIControlStateHighlighted];
}


- (IBAction)makeLifeEasier:(id)sender
{
	UIActionSheet *actionSheet = [[UIActionSheet alloc]
		initWithTitle:@"Are you sure?"
		delegate:self
		cancelButtonTitle:@"Cancel"
		destructiveButtonTitle:@"Continue"
	    otherButtonTitles:nil]; 
	[actionSheet showInView:self.view];
	[actionSheet release];
}


- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
	if (!buttonIndex == [actionSheet cancelButtonIndex])
	{
		NSString *msg = nil;
		
		if (nameField.text.length > 0)
			msg = [[NSString alloc] initWithFormat:
				   @"Sweet, %@, life is much easier now.", nameField.text];
		else
			msg = @"Sweet, life is much easier now.";
		
		UIAlertView *alert = [[UIAlertView alloc]
			initWithTitle:@"Success!"
			message:msg
			delegate:self
			cancelButtonTitle:@"continue"
			otherButtonTitles:nil];
		[alert show];
		[alert release];
		[msg release];
	}
}

- (IBAction)switchChanged:(id)sender
{
	UISwitch *whichSwitch = (UISwitch *)sender;
	BOOL setting = whichSwitch.isOn;
	[topSwitch setOn:setting animated:YES];
	[bottomSwitch setOn:setting animated:YES];
}


- (IBAction)toggleShowHide:(id)sender
{
	UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
	NSInteger segment = segmentedControl.selectedSegmentIndex;
	
	if (segment == kShowSegmentIndex) [switchView setHidden:NO];
	else [switchView setHidden:YES];
}


- (IBAction)textFieldDoneEditing:(id)sender
{
	[sender resignFirstResponder];
}


- (IBAction)backgroundClick:(id)sender
{
	[nameField resignFirstResponder];
	[numberField resignFirstResponder];
}


- (IBAction)sliderChanged:(id)sender
{
	UISlider *slider = (UISlider *)sender;
	int progressAsInt = (int)(slider.value + 0.5f);
	NSString *newText = [[NSString alloc] initWithFormat:@"%d", progressAsInt];
	sliderLabel.text = newText;
	[newText release];
}


- (void)didReceiveMemoryWarning 
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload 
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc 
{
    [super dealloc];
}

@end
