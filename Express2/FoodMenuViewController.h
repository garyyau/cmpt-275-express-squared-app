//
//  FoodMenuViewController.h
//  Express2
//
//  Created by Daman Dhillon on 10/18/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface FoodMenuViewController : UIViewController {
    IBOutlet UIImageView *customBackground;
    IBOutlet UIScrollView *scroller;
    
    IBOutlet UIButton *SnackSButton;
    IBOutlet UIButton *MealSButton;
    IBOutlet UIButton *DrinkSButton;
    IBOutlet UIButton *AllergiesSButton;
    
    IBOutlet UIButton *SnackLButton;
    IBOutlet UIButton *MealLButton;
    IBOutlet UIButton *DrinkLButton;
    IBOutlet UIButton *AllergiesLButton;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)SnacksButton:(id)sender;
- (IBAction)MealButton:(id)sender;
- (IBAction)DrinkButton:(id)sender;
- (IBAction)AllergiesButton:(id)sender;

@end
