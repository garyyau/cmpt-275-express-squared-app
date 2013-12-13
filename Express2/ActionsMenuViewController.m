//
//  ActionsMenuViewController.m
//  Express2
//
//  Created by Daman Dhillon on 10/18/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "ActionsMenuViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ActionsMenuViewController ()

@end

@implementation ActionsMenuViewController


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
            UIImage* backgroundBathroom = [UIImage imageNamed:@"button_blue_bathroom_s.png"];
            [BathroomSButton setBackgroundImage:backgroundBathroom forState:UIControlStateNormal];
            UIImage* backgroundHome = [UIImage imageNamed:@"button_blue_home_s.png"];
            [HomeSButton setBackgroundImage:backgroundHome forState:UIControlStateNormal];
            UIImage* backgroundHelp = [UIImage imageNamed:@"button_blue_needhelp_s.png"];
            [HelpSButton setBackgroundImage:backgroundHelp forState:UIControlStateNormal];
            UIImage* backgroundLost = [UIImage imageNamed:@"button_blue_imlost_s.png"];
            [LostSButton setBackgroundImage:backgroundLost forState:UIControlStateNormal];
            UIImage* backgroundBus = [UIImage imageNamed:@"button_blue_bus_s.png"];
            [BusSButton setBackgroundImage:backgroundBus forState:UIControlStateNormal];
        } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
            UIImage* backgroundBathroom = [UIImage imageNamed:@"button_green_bathroom_s.png"];
            [BathroomSButton setBackgroundImage:backgroundBathroom forState:UIControlStateNormal];
            UIImage* backgroundHome = [UIImage imageNamed:@"button_green_home_s.png"];
            [HomeSButton setBackgroundImage:backgroundHome forState:UIControlStateNormal];
            UIImage* backgroundHelp = [UIImage imageNamed:@"button_green_needhelp_s.png"];
            [HelpSButton setBackgroundImage:backgroundHelp forState:UIControlStateNormal];
            UIImage* backgroundLost = [UIImage imageNamed:@"button_green_imlost_s.png"];
            [LostSButton setBackgroundImage:backgroundLost forState:UIControlStateNormal];
            UIImage* backgroundBus = [UIImage imageNamed:@"button_green_bus_s.png"];
            [BusSButton setBackgroundImage:backgroundBus forState:UIControlStateNormal];
        } else {
            UIImage* backgroundBathroom = [UIImage imageNamed:@"button_purple_bathroom_s.png"];
            [BathroomSButton setBackgroundImage:backgroundBathroom forState:UIControlStateNormal];
            UIImage* backgroundHome = [UIImage imageNamed:@"button_purple_home_s.png"];
            [HomeSButton setBackgroundImage:backgroundHome forState:UIControlStateNormal];
            UIImage* backgroundHelp = [UIImage imageNamed:@"button_purple_needhelp_s.png"];
            [HelpSButton setBackgroundImage:backgroundHelp forState:UIControlStateNormal];
            UIImage* backgroundLost = [UIImage imageNamed:@"button_purple_imlost_s.png"];
            [LostSButton setBackgroundImage:backgroundLost forState:UIControlStateNormal];
            UIImage* backgroundBus = [UIImage imageNamed:@"button_purple_bus_s.png"];
            [BusSButton setBackgroundImage:backgroundBus forState:UIControlStateNormal];
        }
    } else {
        if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
            UIImage* backgroundBathroom = [UIImage imageNamed:@"button_blue_bathroom_l.png"];
            [BathroomLButton setBackgroundImage:backgroundBathroom forState:UIControlStateNormal];
            UIImage* backgroundHome = [UIImage imageNamed:@"button_blue_home_l.png"];
            [HomeLButton setBackgroundImage:backgroundHome forState:UIControlStateNormal];
            UIImage* backgroundHelp = [UIImage imageNamed:@"button_blue_needhelp_l.png"];
            [HelpLButton setBackgroundImage:backgroundHelp forState:UIControlStateNormal];
            UIImage* backgroundLost = [UIImage imageNamed:@"button_blue_imlost_l.png"];
            [LostLButton setBackgroundImage:backgroundLost forState:UIControlStateNormal];
            UIImage* backgroundBus = [UIImage imageNamed:@"button_blue_bus_l.png"];
            [BusLButton setBackgroundImage:backgroundBus forState:UIControlStateNormal];
        } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
            UIImage* backgroundBathroom = [UIImage imageNamed:@"button_green_bathroom_l.png"];
            [BathroomLButton setBackgroundImage:backgroundBathroom forState:UIControlStateNormal];
            UIImage* backgroundHome = [UIImage imageNamed:@"button_green_home_l.png"];
            [HomeLButton setBackgroundImage:backgroundHome forState:UIControlStateNormal];
            UIImage* backgroundHelp = [UIImage imageNamed:@"button_green_needhelp_l.png"];
            [HelpLButton setBackgroundImage:backgroundHelp forState:UIControlStateNormal];
            UIImage* backgroundLost = [UIImage imageNamed:@"button_green_imlost_l.png"];
            [LostLButton setBackgroundImage:backgroundLost forState:UIControlStateNormal];
            UIImage* backgroundBus = [UIImage imageNamed:@"button_green_bus_l.png"];
            [BusLButton setBackgroundImage:backgroundBus forState:UIControlStateNormal];
        } else {
            UIImage* backgroundBathroom = [UIImage imageNamed:@"button_purple_bathroom_l.png"];
            [BathroomLButton setBackgroundImage:backgroundBathroom forState:UIControlStateNormal];
            UIImage* backgroundHome = [UIImage imageNamed:@"button_purple_home_l.png"];
            [HomeLButton setBackgroundImage:backgroundHome forState:UIControlStateNormal];
            UIImage* backgroundHelp = [UIImage imageNamed:@"button_purple_needhelp_l.png"];
            [HelpLButton setBackgroundImage:backgroundHelp forState:UIControlStateNormal];
            UIImage* backgroundLost = [UIImage imageNamed:@"button_purple_imlost_l.png"];
            [LostLButton setBackgroundImage:backgroundLost forState:UIControlStateNormal];
            UIImage* backgroundBus = [UIImage imageNamed:@"button_purple_bus_l.png"];
            [BusLButton setBackgroundImage:backgroundBus forState:UIControlStateNormal];
        }
    }
    
    //Setup for scroll view
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 650)];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    customBackground = nil;
    scroller = nil;
    BathroomSButton = nil;
    HomeSButton = nil;
    HelpSButton = nil;
    LostSButton = nil;
    BusSButton = nil;
    BathroomLButton = nil;
    HomeLButton = nil;
    HelpLButton = nil;
    LostLButton = nil;
    BusLButton = nil;
    NavigationBar = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)BathroomButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_bathroom", CFSTR ("mp3"), NULL);
    else
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_bathroom", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)HomeButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_home", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_home", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)NeedHelpButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_needhelp", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_needhelp", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)IamLostButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_imlost", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_imlost", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)NextBusButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_bus", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_bus", CFSTR ("mp3"), NULL);

    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}
@end
