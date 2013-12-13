//
//  SetupNameViewController.h
//  Express2
//
//  Created by Gary Yau on 10/31/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface SetupNameViewController : UITableViewController {
    
    IBOutlet UITextField *NameFirstNameTextField;
    IBOutlet UITextField *NameLastNameTextField;
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)NextButton:(id)sender;
- (IBAction)ReturnButton:(id)sender;

@end
