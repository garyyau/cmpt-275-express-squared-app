//
//  MainMenuViewController.m
//  Express2
//
//  Created by Gary Yau on 11/21/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "MainMenuViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    // Color Theme Setup
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
        CGFloat Red = 15.0/255.0;
        CGFloat Green = 30.0/255.0;
        CGFloat Blue = 70.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_blue.jpg"];
        [customBackground setImage:backgroundImage];
        
        UIImage* backgroundPhraseLibrary = [UIImage imageNamed:@"button_blue_library.png"];
        [PhraseLibraryButton setBackgroundImage:backgroundPhraseLibrary forState:UIControlStateNormal];
        UIImage* backgroundEmerInfo = [UIImage imageNamed:@"button_blue_emergencyinfo.png"];
        [EmergencyInfoButton setBackgroundImage:backgroundEmerInfo forState:UIControlStateNormal];
    }
    else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        CGFloat Red = 10.0/255.0;
        CGFloat Green = 130.0/255.0;
        CGFloat Blue = 35.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_green.jpg"];
        [customBackground setImage:backgroundImage];
        
        UIImage* backgroundPhraseLibrary = [UIImage imageNamed:@"button_green_library.png"];
        [PhraseLibraryButton setBackgroundImage:backgroundPhraseLibrary forState:UIControlStateNormal];
        UIImage* backgroundEmerInfo = [UIImage imageNamed:@"button_green_emergencyinfo.png"];
        [EmergencyInfoButton setBackgroundImage:backgroundEmerInfo forState:UIControlStateNormal];
    }
    else {
        CGFloat Red = 55.0/255.0;
        CGFloat Green = 15.0/255.0;
        CGFloat Blue = 120.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_purple.jpg"];
        [customBackground setImage:backgroundImage];
        
        UIImage* backgroundPhraseLibrary = [UIImage imageNamed:@"button_purple_library.png"];
        [PhraseLibraryButton setBackgroundImage:backgroundPhraseLibrary forState:UIControlStateNormal];
        UIImage* backgroundEmerInfo = [UIImage imageNamed:@"button_purple_emergencyinfo.png"];
        [EmergencyInfoButton setBackgroundImage:backgroundEmerInfo forState:UIControlStateNormal];
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    customBackground = nil;
    PhraseLibraryButton = nil;
    EmergencyInfoButton = nil;
    NavigationBar = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
