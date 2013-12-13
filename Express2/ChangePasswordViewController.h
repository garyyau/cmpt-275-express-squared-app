//
//  ChangePasswordViewController.h
//  Express2
//
//  Created by Gary Yau on 11/6/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface ChangePasswordViewController : UITableViewController {
    
    IBOutlet UITextField *EnterOldPasswordTextField;
    IBOutlet UITextField *EnterNewPasswordTextField;
    IBOutlet UITextField *ConfirmNewPasswordTextField;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)SubmitButton:(id)sender;
- (IBAction)ReturnButton:(id)sender;

@end
