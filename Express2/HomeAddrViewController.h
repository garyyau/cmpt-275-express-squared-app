//
//  HomeAddrViewController.h
//  Express2
//
//  Created by Gary Yau on 10/29/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface HomeAddrViewController : UITableViewController <UIActionSheetDelegate> {
    IBOutlet UITextField *HomeAddressTextField;
    IBOutlet UITextField *HomeCityTextField;
    IBOutlet UITextField *HomeProvinceTextField;
    IBOutlet UITextField *HomeZipTextField;
    IBOutlet UITextField *HomeCountryTextField;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)SubmitButton:(id)sender;
- (IBAction)ReturnButton:(id)sender;

@end
