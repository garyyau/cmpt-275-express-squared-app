//
//  OptionsMenuViewController.h
//  Express2
//
//  Created by Gary Yau on 10/19/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface OptionsMenuViewController : UIViewController <MFMailComposeViewControllerDelegate> {
    IBOutlet UIImageView *customBackground;
    IBOutlet UINavigationBar *NavigationBar;
    
    IBOutlet UIButton *SettingsButton;
    IBOutlet UIButton *ChangePasswordButton;
    IBOutlet UIButton *TutorialsButton;
    IBOutlet UIButton *ErrorReportButton;
    IBOutlet UIButton *CreditsButton;
}

- (IBAction)ErrorReportButton:(id)sender;

@end
