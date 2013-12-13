//
//  FeelingsMenuViewController.m
//  Express2
//
//  Created by Team X.I.S on 10/18/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "FeelingsMenuViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface FeelingsMenuViewController ()

@end

@implementation FeelingsMenuViewController


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
            UIImage* backgroundSick = [UIImage imageNamed:@"button_blue_sick_s.png"];
            [SickSButton setBackgroundImage:backgroundSick forState:UIControlStateNormal];
            UIImage* backgroundHurt = [UIImage imageNamed:@"button_blue_hurt_s.png"];
            [HurtSButton setBackgroundImage:backgroundHurt forState:UIControlStateNormal];
            UIImage* backgroundTooHot = [UIImage imageNamed:@"button_blue_toohot_s.png"];
            [TooHotSButton setBackgroundImage:backgroundTooHot forState:UIControlStateNormal];
            UIImage* backgroundTooCold = [UIImage imageNamed:@"button_blue_toocold_s.png"];
            [TooColdSButton setBackgroundImage:backgroundTooCold forState:UIControlStateNormal];
            UIImage* backgroundTired = [UIImage imageNamed:@"button_blue_tired_s.png"];
            [TiredSButton setBackgroundImage:backgroundTired forState:UIControlStateNormal];
            UIImage* backgroundSleepy = [UIImage imageNamed:@"button_blue_sleepy_s.png"];
            [SleepySButton setBackgroundImage:backgroundSleepy forState:UIControlStateNormal];
        } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
            UIImage* backgroundSick = [UIImage imageNamed:@"button_green_sick_s.png"];
            [SickSButton setBackgroundImage:backgroundSick forState:UIControlStateNormal];
            UIImage* backgroundHurt = [UIImage imageNamed:@"button_green_hurt_s.png"];
            [HurtSButton setBackgroundImage:backgroundHurt forState:UIControlStateNormal];
            UIImage* backgroundTooHot = [UIImage imageNamed:@"button_green_toohot_s.png"];
            [TooHotSButton setBackgroundImage:backgroundTooHot forState:UIControlStateNormal];
            UIImage* backgroundTooCold = [UIImage imageNamed:@"button_green_toocold_s.png"];
            [TooColdSButton setBackgroundImage:backgroundTooCold forState:UIControlStateNormal];
            UIImage* backgroundTired = [UIImage imageNamed:@"button_green_tired_s.png"];
            [TiredSButton setBackgroundImage:backgroundTired forState:UIControlStateNormal];
            UIImage* backgroundSleepy = [UIImage imageNamed:@"button_green_sleepy_s.png"];
            [SleepySButton setBackgroundImage:backgroundSleepy forState:UIControlStateNormal];
        } else {
            UIImage* backgroundSick = [UIImage imageNamed:@"button_purple_sick_s.png"];
            [SickSButton setBackgroundImage:backgroundSick forState:UIControlStateNormal];
            UIImage* backgroundHurt = [UIImage imageNamed:@"button_purple_hurt_s.png"];
            [HurtSButton setBackgroundImage:backgroundHurt forState:UIControlStateNormal];
            UIImage* backgroundTooHot = [UIImage imageNamed:@"button_purple_toohot_s.png"];
            [TooHotSButton setBackgroundImage:backgroundTooHot forState:UIControlStateNormal];
            UIImage* backgroundTooCold = [UIImage imageNamed:@"button_purple_toocold_s.png"];
            [TooColdSButton setBackgroundImage:backgroundTooCold forState:UIControlStateNormal];
            UIImage* backgroundTired = [UIImage imageNamed:@"button_purple_tired_s.png"];
            [TiredSButton setBackgroundImage:backgroundTired forState:UIControlStateNormal];
            UIImage* backgroundSleepy = [UIImage imageNamed:@"button_purple_sleepy_s.png"];
            [SleepySButton setBackgroundImage:backgroundSleepy forState:UIControlStateNormal];
        }
    } else {
        if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
            UIImage* backgroundSick = [UIImage imageNamed:@"button_blue_sick_l.png"];
            [SickLButton setBackgroundImage:backgroundSick forState:UIControlStateNormal];
            UIImage* backgroundHurt = [UIImage imageNamed:@"button_blue_hurt_l.png"];
            [HurtLButton setBackgroundImage:backgroundHurt forState:UIControlStateNormal];
            UIImage* backgroundTooHot = [UIImage imageNamed:@"button_blue_toohot_l.png"];
            [TooHotLButton setBackgroundImage:backgroundTooHot forState:UIControlStateNormal];
            UIImage* backgroundTooCold = [UIImage imageNamed:@"button_blue_toocold_l.png"];
            [TooColdLButton setBackgroundImage:backgroundTooCold forState:UIControlStateNormal];
            UIImage* backgroundTired = [UIImage imageNamed:@"button_blue_tired_l.png"];
            [TiredLButton setBackgroundImage:backgroundTired forState:UIControlStateNormal];
            UIImage* backgroundSleepy = [UIImage imageNamed:@"button_blue_sleepy_l.png"];
            [SleepyLButton setBackgroundImage:backgroundSleepy forState:UIControlStateNormal];
        } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
            UIImage* backgroundSick = [UIImage imageNamed:@"button_green_sick_l.png"];
            [SickLButton setBackgroundImage:backgroundSick forState:UIControlStateNormal];
            UIImage* backgroundHurt = [UIImage imageNamed:@"button_green_hurt_l.png"];
            [HurtLButton setBackgroundImage:backgroundHurt forState:UIControlStateNormal];
            UIImage* backgroundTooHot = [UIImage imageNamed:@"button_green_toohot_l.png"];
            [TooHotLButton setBackgroundImage:backgroundTooHot forState:UIControlStateNormal];
            UIImage* backgroundTooCold = [UIImage imageNamed:@"button_green_toocold_l.png"];
            [TooColdLButton setBackgroundImage:backgroundTooCold forState:UIControlStateNormal];
            UIImage* backgroundTired = [UIImage imageNamed:@"button_green_tired_l.png"];
            [TiredLButton setBackgroundImage:backgroundTired forState:UIControlStateNormal];
            UIImage* backgroundSleepy = [UIImage imageNamed:@"button_green_sleepy_l.png"];
            [SleepyLButton setBackgroundImage:backgroundSleepy forState:UIControlStateNormal];
        } else {
            UIImage* backgroundSick = [UIImage imageNamed:@"button_purple_sick_l.png"];
            [SickLButton setBackgroundImage:backgroundSick forState:UIControlStateNormal];
            UIImage* backgroundHurt = [UIImage imageNamed:@"button_purple_hurt_l.png"];
            [HurtLButton setBackgroundImage:backgroundHurt forState:UIControlStateNormal];
            UIImage* backgroundTooHot = [UIImage imageNamed:@"button_purple_toohot_l.png"];
            [TooHotLButton setBackgroundImage:backgroundTooHot forState:UIControlStateNormal];
            UIImage* backgroundTooCold = [UIImage imageNamed:@"button_purple_toocold_l.png"];
            [TooColdLButton setBackgroundImage:backgroundTooCold forState:UIControlStateNormal];
            UIImage* backgroundTired = [UIImage imageNamed:@"button_purple_tired_l.png"];
            [TiredLButton setBackgroundImage:backgroundTired forState:UIControlStateNormal];
            UIImage* backgroundSleepy = [UIImage imageNamed:@"button_purple_sleepy_l.png"];
            [SleepyLButton setBackgroundImage:backgroundSleepy forState:UIControlStateNormal];
        }
    }
    
    //Setup for scroll view
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 810)];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    customBackground = nil;
    scroller = nil;
    SickSButton = nil;
    HurtSButton = nil;
    TooHotSButton = nil;
    TooColdSButton = nil;
    TiredSButton = nil;
    SleepySButton = nil;
    SickLButton = nil;
    HurtLButton = nil;
    TooHotLButton = nil;
    TooColdLButton = nil;
    TiredLButton = nil;
    SleepyLButton = nil;
    NavigationBar = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)SickButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_sick", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_sick", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)HurtButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_hurt", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_hurt", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)TooHotButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_toohot", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_toohot", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)TooColdButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_toocold", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_toocold", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)TiredButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_tired", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_tired", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)SleepyButton:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    
    CFURLRef soundFileRef;
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"VoiceGender"] == 0)//If voice gender setting is male
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_m_sleepy", CFSTR ("mp3"), NULL);
    else //If voice gender setting is female
        soundFileRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"aud_f_sleepy", CFSTR ("mp3"), NULL);
    
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileRef, &soundID);
    AudioServicesPlayAlertSound(soundID);
}
@end
