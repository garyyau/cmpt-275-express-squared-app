//
//  SetupSchoolAddrViewController.h
//  Express2
//
//  Created by Gary Yau on 10/31/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface SetupSchoolAddrViewController : UITableViewController {
    
    IBOutlet UITextField *SchoolNameTextField;
    IBOutlet UITextField *SchoolAddressTextField;
    IBOutlet UITextField *SchoolCityTextField;
    IBOutlet UITextField *SchoolProvinceTextField;
    IBOutlet UITextField *SchoolZipTextField;
    IBOutlet UITextField *SchoolCountryTextField;
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)NextButton:(id)sender;
- (IBAction)BackButton:(id)sender;
- (IBAction)ReturnButton:(id)sender;

@end
