//
//  Control_FunViewController.h
//  Control Fun
//
//  Created by Tim Novinger on 07/05/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kShowSegmentIndex	1

@interface Control_FunViewController : UIViewController <UIActionSheetDelegate>
{
	IBOutlet	UITextField		*nameField;
	IBOutlet	UITextField		*numberField;
	IBOutlet	UILabel			*sliderLabel;
	IBOutlet	UISwitch		*topSwitch;
	IBOutlet	UISwitch		*bottomSwitch;
	IBOutlet	UIView			*switchView;
	IBOutlet	UIButton		*easyButton;
}
@property (nonatomic, retain) UITextField *nameField;
@property (nonatomic, retain) UITextField *numberField;
@property (nonatomic, retain) UILabel *sliderLabel;
@property (nonatomic, retain) UISwitch *topSwitch;
@property (nonatomic, retain) UISwitch *bottomSwitch;
@property (nonatomic, retain) UIView *switchView;
@property (nonatomic, retain) UIButton *easyButton;
- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundClick:(id)sender;
- (IBAction)sliderChanged:(id)sender;
- (IBAction)switchChanged:(id)sender;
- (IBAction)toggleShowHide:(id)sender;
- (IBAction)makeLifeEasier:(id)sender;

@end

