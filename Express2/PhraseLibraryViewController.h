//
//  PhraseLibraryViewController.h
//  Express2
//
//  Created by Daman Dhillon on 10/18/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface PhraseLibraryViewController : UIViewController {
    IBOutlet UIImageView *customBackground;
    IBOutlet UIButton *FoodButton;
    IBOutlet UIButton *ActionsButton;
    IBOutlet UIButton *FeelingsButton;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction) FoodButton;
- (IBAction) ActionsButton;
- (IBAction) FeelingsButton;

@end
