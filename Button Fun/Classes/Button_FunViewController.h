//
//  Button_FunViewController.h
//  Button Fun
//
//  Created by Tim Novinger on 07/05/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Button_FunViewController : UIViewController {
	IBOutlet	UILabel		*statusText;
}

@property (retain, nonatomic) UILabel *statusText;

- (IBAction)buttonPressed:(id)sender;
@end

