//
//  SetupPasswordViewController.h
//  Express2
//
//  Created by Gary Yau on 11/6/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface SetupPasswordViewController : UITableViewController {
    
    IBOutlet UITextField *EnterPasswordTextField;
    IBOutlet UITextField *ConfirmPasswordTextField;
    IBOutlet UILabel *WarnEnterPasswordLabel;
    IBOutlet UILabel *WarnConfirmPasswordLabel;
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)NextButton:(id)sender;
- (IBAction)ReturnButton:(id)sender;

@end
