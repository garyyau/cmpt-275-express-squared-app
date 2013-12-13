//
//  TutorialMenuViewController.m
//  Express2
//
//  Created by Gary Yau on 10/19/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "TutorialMenuViewController.h"

@interface TutorialMenuViewController ()

@end

@implementation TutorialMenuViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
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
        
        UIImage* tut1 = [UIImage imageNamed:@"button_blue_tut1.png"];
        [Tutorial1Button setBackgroundImage:tut1 forState:UIControlStateNormal];
        UIImage* tut2 = [UIImage imageNamed:@"button_blue_tut2.png"];
        [Tutorial2Button setBackgroundImage:tut2 forState:UIControlStateNormal];
        UIImage* tut3 = [UIImage imageNamed:@"button_blue_tut3.png"];
        [Tutorial3Button setBackgroundImage:tut3 forState:UIControlStateNormal];
    }
    else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        CGFloat Red = 10.0/255.0;
        CGFloat Green = 130.0/255.0;
        CGFloat Blue = 35.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_green.jpg"];
        [customBackground setImage:backgroundImage];
        
        UIImage* tut1 = [UIImage imageNamed:@"button_green_tut1.png"];
        [Tutorial1Button setBackgroundImage:tut1 forState:UIControlStateNormal];
        UIImage* tut2 = [UIImage imageNamed:@"button_green_tut2.png"];
        [Tutorial2Button setBackgroundImage:tut2 forState:UIControlStateNormal];
        UIImage* tut3 = [UIImage imageNamed:@"button_green_tut3.png"];
        [Tutorial3Button setBackgroundImage:tut3 forState:UIControlStateNormal];
    }
    else {
        CGFloat Red = 55.0/255.0;
        CGFloat Green = 15.0/255.0;
        CGFloat Blue = 120.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_purple.jpg"];
        [customBackground setImage:backgroundImage];
        
        UIImage* tut1 = [UIImage imageNamed:@"button_purple_tut1.png"];
        [Tutorial1Button setBackgroundImage:tut1 forState:UIControlStateNormal];
        UIImage* tut2 = [UIImage imageNamed:@"button_purple_tut2.png"];
        [Tutorial2Button setBackgroundImage:tut2 forState:UIControlStateNormal];
        UIImage* tut3 = [UIImage imageNamed:@"button_purple_tut3.png"];
        [Tutorial3Button setBackgroundImage:tut3 forState:UIControlStateNormal];
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    customBackground = nil;
    NavigationBar = nil;
    Tutorial1Button = nil;
    Tutorial2Button = nil;
    Tutorial3Button = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)Tutorial1:(id)sender {
    //Open URL in a browser window
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=IlpLWebjCR0"]];
}

- (IBAction)Tutorial2:(id)sender {
    //Open URL in a browser window
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=qmjVEgt6G-4"]];
}

- (IBAction)Tutorial3:(id)sender {
    //Open URL in a browser window
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=1YAjJzK2MIU"]];
}
@end
