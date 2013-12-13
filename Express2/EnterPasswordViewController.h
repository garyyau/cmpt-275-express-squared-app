//
//  EnterPasswordViewController.h
//  Express2
//
//  Created by Gary Yau on 11/6/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface EnterPasswordViewController : UITableViewController {
    
    IBOutlet UITextField *EnterPasswordTextField;
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)SubmitButton:(id)sender;
- (IBAction)ResetButton:(id)sender;
- (IBAction)ReturnButton:(id)sender;

@end
