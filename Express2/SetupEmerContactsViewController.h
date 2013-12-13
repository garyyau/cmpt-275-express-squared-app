//
//  SetupEmerContactsViewController.h
//  Express2
//
//  Created by Gary Yau on 10/31/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface SetupEmerContactsViewController : UITableViewController {
    
    IBOutlet UITextField *Emer1FirstNameTextField;
    IBOutlet UITextField *Emer1LastNameTextField;
    IBOutlet UITextField *Emer1PhoneTextField;
    IBOutlet UITextField *Emer1RelTextField;
    
    IBOutlet UITextField *Emer2FirstNameTextField;
    IBOutlet UITextField *Emer2LastNameTextField;
    IBOutlet UITextField *Emer2PhoneTextField;
    IBOutlet UITextField *Emer2RelTextField;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)NextButton:(id)sender;
- (IBAction)BackButton:(id)sender;
- (IBAction)ReturnButton:(id)sender;

@end
