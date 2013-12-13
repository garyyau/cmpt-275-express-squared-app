//
//  TutorialMenuViewController.h
//  Express2
//
//  Created by Gary Yau on 10/19/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface TutorialMenuViewController : UIViewController {
    IBOutlet UIImageView *customBackground;
    
    IBOutlet UINavigationBar *NavigationBar;
    
    IBOutlet UIButton *Tutorial1Button;
    IBOutlet UIButton *Tutorial2Button;
    IBOutlet UIButton *Tutorial3Button;
}

- (IBAction)Tutorial1:(id)sender;
- (IBAction)Tutorial2:(id)sender;
- (IBAction)Tutorial3:(id)sender;

@end
