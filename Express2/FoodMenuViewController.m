//
//  FoodMenuViewController.m
//  Express2
//
//  Created by Daman Dhillon on 10/18/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "FoodMenuViewController.h"
#import <AudioToolbox/AudioToolbox.h>


@interface FoodMenuViewController ()

@end

@implementation FoodMenuViewController


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
            UIImage* backgroundSnack = [UIImage imageNamed:@"button_blue_snack_s.png"];
            [SnackSButton setBackgroundImage:backgroundSnack forState:UIControlStateNormal];
            UIImage* backgroundMeal = [UIImage imageNamed:@"button_blue_meal_s.png"];
            [MealSButton setBackgroundImage:backgroundMeal forState:UIControlStateNormal];
            UIImage* backgroundDrink = [UIImage imageNamed:@"button_blue_drink_s.png"];
            [DrinkSButton setBackgroundImage:backgroundDrink forState:UIControlStateNormal];
            UIImage* backgroundAllergies = [UIImage imageNamed:@"button_blue_allergies_s.png"];
            [AllergiesSButton setBackgroundImage:backgroundAllergies forState:UIControlStateNormal];
        } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
            UIImage* backgroundSnack = [UIImage imageNamed:@"button_green_snack_s.png"];
            [SnackSButton setBackgroundImage:backgroundSnack forState:UIControlStateNormal];
            UIImage* backgroundMeal = [UIImage imageNamed:@"button_green_meal_s.png"];
            [MealSButton setBackgroundImage:backgroundMeal forState:UIControlStateNormal];
            UIImage* backgroundDrink = [UIImage imageNamed:@"button_green_drink_s.png"];
            [DrinkSButton setBackgroundImage:backgroundDrink forState:UIControlStateNormal];
            UIImage* backgroundAllergies = [UIImage imageNamed:@"button_green_allergies_s.png"];
            [AllergiesSButton setBackgroundImage:backgroundAllergies forState:UIControlStateNormal];
        } else {
            UIImage* backgroundSnack = [UIImage imageNamed:@"button_purple_snack_s.png"];
            [SnackSButton setBackgroundImage:backgroundSnack forState:UIControlStateNormal];
            UIImage* backgroundMeal = [UIImage imageNamed:@"button_purple_meal_s.png"];
            [MealSButton setBackgroundImage:backgroundMeal forState:UIControlStateNormal];
            UIImage* backgroundDrink = [UIImage imageNamed:@"button_purple_drink_s.png"];
            [DrinkSButton setBackgroundImage:backgroundDrink forState:UIControlStateNormal];
            UIImage* backgroundAllergies = [UIImage imageNamed:@"button_purple_allergies_s.png"];
            [AllergiesSButton setBackgroundImage:backgroundAllergies forState:UIControlStateNormal];
        }
    } else {
        if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
            UIImage* backgroundSnack = [UIImage imageNamed:@"button_blue_snack_l.png"];
            [SnackLButton setBackgroundImage:backgroundSnack forState:UIControlStateNormal];
            UIImage* backgroundMeal = [UIImage imageNamed:@"button_blue_meal_l.png"];
            [MealLButton setBackgroundImage:backgroundMeal forState:UIControlStateNormal];
            UIImage* backgroundDrink = [UIImage imageNamed:@"button_blue_drink_l.png"];
            [DrinkLButton setBackgroundImage:backgroundDrink forState:UIControlStateNormal];
            UIImage* backgroundAllergies = [UIImage imageNamed:@"button_blue_allergies_l.png"];
            [AllergiesLButton setBackgroundImage:backgroundAllergies forState:UIControlStateNormal];
        } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
            UIImage* backgroundSnack = [UIImage imageNamed:@"button_green_snack_l.png"];
            [SnackLButton setBackgroundImage:backgroundSnack forState:UIControlStateNormal];
            UIImage* backgroundMeal = [UIImage imageNamed:@"button_green_meal_l.png"];
            [MealLButton setBackgroundImage:backgroundMeal forState:UIControlStateNormal];
            UIImage* backgroundDrink = [UIImage imageNamed:@"button_green_drink_l.png"];
            [DrinkLButton setBackgroundImage:backgroundDrink forState:UIControlStateNormal];
            UIImage* backgroundAllergies = [UIImage imageNamed:@"button_green_allergies_l.png"];
            [AllergiesLButton setBackgroundImage:backgroundAllergies forState:UIControlStateNormal];
        } else {
            UIImage* backgroundSnack = [UIImage imageNamed:@"button_purple_snack_l.png"];
            [SnackLButton setBackgroundImage:backgroundSnack forState:UIControlStateNormal];
            UIImage* backgroundMeal = [UIImage imageNamed:@"button_purple_meal_l.png"];
            [MealLButton setBackgroundImage:backgroundMeal forState:UIControlStateNormal];
            UIImage* backgroundDrink = [UIImage imageNamed:@"button_purple_drink_l.png"];
            [DrinkLButton setBackgroundImage:backgroundDrink forState:UIControlStateNormal];
            UIImage* backgroundAllergies = [UIImage imageNamed:@"button_purple_allergies_l.png"];
            [AllergiesLButton setBackgroundImage:backgroundAllergies forState:UIControlStateNormal];
        }
    }

    
    //Setup for scroll view
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 540)];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    customBackground = nil;
    scroller = nil;
    SnackSButton = nil;
    MealSButton = nil;
    DrinkSButton = nil;
    AllergiesSButton = nil;
    SnackLButton = nil;
    MealLButton = nil;
    DrinkLButton = nil;
    AllergiesLButton = nil;
    NavigationBar = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)SnacksButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_snack", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_snack", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)MealButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_meal", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_meal", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)DrinkButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_drink", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_drink", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)AllergiesButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_allergies", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_allergies", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}
@end
