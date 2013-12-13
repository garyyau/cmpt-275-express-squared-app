//
//  SplashViewController.m
//  Express2
//
//  Created by Gary Yau on 11/21/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "SplashViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

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
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_splash_blue.jpg"];
        [customBackground setImage:backgroundImage];
    }
    else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_splash_green.jpg"];
        [customBackground setImage:backgroundImage];
    }
    else {
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_splash_purple.jpg"];
        [customBackground setImage:backgroundImage];
    }
    
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(nextScreen) userInfo:nil repeats:NO];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    customBackground = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)nextScreen {
    // Check if Initial Boot
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"hasDoneSetup"]) {
        [self performSegueWithIdentifier:@"DoInitialSetup" sender:self];
    } else {
        [self performSegueWithIdentifier:@"GoMainMenu" sender:self];
    }
}

@end
