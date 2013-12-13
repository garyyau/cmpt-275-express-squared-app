//
//  PhraseLibraryViewController.m
//  Express2
//
//  Created by Daman Dhillon on 10/18/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "PhraseLibraryViewController.h"

@interface PhraseLibraryViewController ()

@end

@implementation PhraseLibraryViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {    
    // Color Theme Background Setup
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
        CGFloat Red = 15.0/255.0;
        CGFloat Green = 30.0/255.0;
        CGFloat Blue = 70.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_blue.jpg"];
        [customBackground setImage:backgroundImage];
    }
    else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        CGFloat Red = 10.0/255.0;
        CGFloat Green = 130.0/255.0;
        CGFloat Blue = 35.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_green.jpg"];
        [customBackground setImage:backgroundImage];
    }
    else {
        CGFloat Red = 55.0/255.0;
        CGFloat Green = 15.0/255.0;
        CGFloat Blue = 120.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_purple.jpg"];
        [customBackground setImage:backgroundImage];
    }
        
    // Color Theme Buttons Setup
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"ButtonGraphics"] == false) {
        if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
            UIImage* backgroundFood = [UIImage imageNamed:@"button_blue_food_s.png"];
            [FoodButton setBackgroundImage:backgroundFood forState:UIControlStateNormal];
            UIImage* backgroundActions = [UIImage imageNamed:@"button_blue_actions_s.png"];
            [ActionsButton setBackgroundImage:backgroundActions forState:UIControlStateNormal];
            UIImage* backgroundFeelings = [UIImage imageNamed:@"button_blue_feelings_s.png"];
            [FeelingsButton setBackgroundImage:backgroundFeelings forState:UIControlStateNormal];
        } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
            UIImage* backgroundFood = [UIImage imageNamed:@"button_green_food_s.png"];
            [FoodButton setBackgroundImage:backgroundFood forState:UIControlStateNormal];
            UIImage* backgroundActions = [UIImage imageNamed:@"button_green_actions_s.png"];
            [ActionsButton setBackgroundImage:backgroundActions forState:UIControlStateNormal];
            UIImage* backgroundFeelings = [UIImage imageNamed:@"button_green_feelings_s.png"];
            [FeelingsButton setBackgroundImage:backgroundFeelings forState:UIControlStateNormal];
        } else {
            UIImage* backgroundFood = [UIImage imageNamed:@"button_purple_food_s.png"];
            [FoodButton setBackgroundImage:backgroundFood forState:UIControlStateNormal];
            UIImage* backgroundActions = [UIImage imageNamed:@"button_purple_actions_s.png"];
            [ActionsButton setBackgroundImage:backgroundActions forState:UIControlStateNormal];
            UIImage* backgroundFeelings = [UIImage imageNamed:@"button_purple_feelings_s.png"];
            [FeelingsButton setBackgroundImage:backgroundFeelings forState:UIControlStateNormal];
        }
    } else {
        if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
            UIImage* backgroundFood = [UIImage imageNamed:@"button_blue_food_l.png"];
            [FoodButton setBackgroundImage:backgroundFood forState:UIControlStateNormal];
            UIImage* backgroundActions = [UIImage imageNamed:@"button_blue_actions_l.png"];
            [ActionsButton setBackgroundImage:backgroundActions forState:UIControlStateNormal];
            UIImage* backgroundFeelings = [UIImage imageNamed:@"button_blue_feelings_l.png"];
            [FeelingsButton setBackgroundImage:backgroundFeelings forState:UIControlStateNormal];
        }
        else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
            UIImage* backgroundFood = [UIImage imageNamed:@"button_green_food_l.png"];
            [FoodButton setBackgroundImage:backgroundFood forState:UIControlStateNormal];
            UIImage* backgroundActions = [UIImage imageNamed:@"button_green_actions_l.png"];
            [ActionsButton setBackgroundImage:backgroundActions forState:UIControlStateNormal];
            UIImage* backgroundFeelings = [UIImage imageNamed:@"button_green_feelings_l.png"];
            [FeelingsButton setBackgroundImage:backgroundFeelings forState:UIControlStateNormal];
        }
        else {
            UIImage* backgroundFood = [UIImage imageNamed:@"button_purple_food_l.png"];
            [FoodButton setBackgroundImage:backgroundFood forState:UIControlStateNormal];
            UIImage* backgroundActions = [UIImage imageNamed:@"button_purple_actions_l.png"];
            [ActionsButton setBackgroundImage:backgroundActions forState:UIControlStateNormal];
            UIImage* backgroundFeelings = [UIImage imageNamed:@"button_purple_feelings_l.png"];
            [FeelingsButton setBackgroundImage:backgroundFeelings forState:UIControlStateNormal];
        }
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    customBackground = nil;
    FoodButton = nil;
    ActionsButton = nil;
    FeelingsButton = nil;
    NavigationBar = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction) FoodButton {
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ButtonGraphics"] == false) {
        [self performSegueWithIdentifier:@"segFoodText" sender:self];
    } else {
        [self performSegueWithIdentifier:@"segFoodPic" sender:self];
    }
}

- (IBAction) ActionsButton {
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ButtonGraphics"] == false) {
        [self performSegueWithIdentifier:@"segActionsText" sender:self];
    } else {
        [self performSegueWithIdentifier:@"segActionsPic" sender:self];
    }
}

- (IBAction) FeelingsButton {
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ButtonGraphics"] == false) {
        [self performSegueWithIdentifier:@"segFeelingsText" sender:self];
    } else {
        [self performSegueWithIdentifier:@"segFeelingsPic" sender:self];
    }
}

@end
