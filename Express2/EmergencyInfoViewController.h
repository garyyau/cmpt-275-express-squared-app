//
//  EmergencyInfoViewController.h
//  Express2
//
//  Created by Gary Yau on 10/31/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface EmergencyInfoViewController : UITableViewController <CLLocationManagerDelegate> {
    
    IBOutlet UILabel *UserNameLabel;
    IBOutlet UILabel *UserAllergiesLabel;
    
    IBOutlet UILabel *Emer1NameLabel;
    IBOutlet UILabel *Emer1PhoneLabel;
    IBOutlet UILabel *Emer1RelLabel;
    
    IBOutlet UILabel *Emer2NameLabel;
    IBOutlet UILabel *Emer2PhoneLabel;
    IBOutlet UILabel *Emer2RelLabel;
    
    IBOutlet UINavigationBar *NavigationBar;
    IBOutlet UILabel *Sec1Name;
    IBOutlet UILabel *Sec1Allergies;
    IBOutlet UILabel *Sec2Name;
    IBOutlet UILabel *Sec2Phone;
    IBOutlet UILabel *Sec2Rel;
    IBOutlet UILabel *Sec3Name;
    IBOutlet UILabel *Sec3Phone;
    IBOutlet UILabel *Sec3Rel;
    
    IBOutlet UIButton *homeAddressButton;
    IBOutlet UIButton *schoolAddressButton;
}

- (IBAction)viewHomeAddress:(id)sender;
- (IBAction)viewSchoolAddress:(id)sender;

@property (weak, nonatomic) IBOutlet UITableViewCell *HomeAddressTableViewCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *SchoolAddressTableViewCell;
@property(nonatomic,strong) CLLocationManager *locationManager;

@end
