//
//  ActionsMenuViewController.h
//  Express2
//
//  Created by Daman Dhillon on 10/18/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface ActionsMenuViewController : UIViewController {
    IBOutlet UIImageView *customBackground;
    IBOutlet UIScrollView *scroller;
    
    IBOutlet UIButton *BathroomSButton;
    IBOutlet UIButton *HomeSButton;
    IBOutlet UIButton *HelpSButton;
    IBOutlet UIButton *LostSButton;
    IBOutlet UIButton *BusSButton;
    
    IBOutlet UIButton *BathroomLButton;
    IBOutlet UIButton *HomeLButton;
    IBOutlet UIButton *HelpLButton;
    IBOutlet UIButton *LostLButton;
    IBOutlet UIButton *BusLButton;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)BathroomButton:(id)sender;
- (IBAction)HomeButton:(id)sender;
- (IBAction)NeedHelpButton:(id)sender;
- (IBAction)IamLostButton:(id)sender;
- (IBAction)NextBusButton:(id)sender;

@end
