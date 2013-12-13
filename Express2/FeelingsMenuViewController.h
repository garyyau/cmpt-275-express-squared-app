//
//  FeelingsMenuViewController.h
//  Express2
//
//  Created by Daman Dhillon on 10/18/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface FeelingsMenuViewController : UIViewController {
    IBOutlet UIImageView *customBackground;
    IBOutlet UIScrollView *scroller;
    
    IBOutlet UIButton *SickSButton;
    IBOutlet UIButton *HurtSButton;
    IBOutlet UIButton *TooHotSButton;
    IBOutlet UIButton *TooColdSButton;
    IBOutlet UIButton *TiredSButton;
    IBOutlet UIButton *SleepySButton;
    
    IBOutlet UIButton *SickLButton;
    IBOutlet UIButton *HurtLButton;
    IBOutlet UIButton *TooHotLButton;
    IBOutlet UIButton *TooColdLButton;
    IBOutlet UIButton *TiredLButton;
    IBOutlet UIButton *SleepyLButton;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)SickButton:(id)sender;
- (IBAction)HurtButton:(id)sender;
- (IBAction)TooHotButton:(id)sender;
- (IBAction)TooColdButton:(id)sender;
- (IBAction)TiredButton:(id)sender;
- (IBAction)SleepyButton:(id)sender;

@end
