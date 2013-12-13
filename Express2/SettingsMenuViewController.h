//
//  SettingsMenuViewController.h
//  Express2
//
//  Created by Gary Yau on 10/21/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface SettingsMenuViewController : UITableViewController {
    IBOutlet UISwitch *ButtonGraphicsSwitchState;
    IBOutlet UISwitch *ContactPrivacySwitchState;
    IBOutlet UISwitch *AddressPrivacySwitchState;
    IBOutlet UISegmentedControl *VoiceGenderSegmentedState;
    IBOutlet UISegmentedControl *ColorThemeSegmentedState;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)ButtonGraphicsSwitch:(id)sender;
- (IBAction)ContactPrivacySwitch:(id)sender;
- (IBAction)AddressPrivacySwitch:(id)sender;
- (IBAction)VoiceGenderSegmented:(id)sender;
- (IBAction)ColorThemeSegmented:(id)sender;


@end
