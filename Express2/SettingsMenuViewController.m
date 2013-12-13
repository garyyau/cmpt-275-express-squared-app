//
//  SettingsMenuViewController.m
//  Express2
//
//  Created by Gary Yau on 10/21/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "SettingsMenuViewController.h"

@interface SettingsMenuViewController ()

@end

@implementation SettingsMenuViewController


- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
	// create the parent view that will hold header Label
	UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 300.0, 44.0)];
	
	// create the button object
	UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	headerLabel.backgroundColor = [UIColor clearColor];
	headerLabel.opaque = NO;
	headerLabel.textColor = [UIColor whiteColor];
	headerLabel.font = [UIFont boldSystemFontOfSize:16];
	headerLabel.frame = CGRectMake(10.0, 0.0, 300.0, 44.0);
    
	// If you want to align the header text as centered
	// headerLabel.frame = CGRectMake(150.0, 0.0, 300.0, 44.0);
    
    if ((NSInteger)section == 0) {
        headerLabel.text = [NSString stringWithFormat:@"%s", "User Information"]; // i.e. array element
        [customView addSubview:headerLabel];
    } else if ((NSInteger)section == 1) {
        headerLabel.text = [NSString stringWithFormat:@"%s", "User Preferences"]; // i.e. array element
        [customView addSubview:headerLabel];
    }
    
	return customView;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
	// create the parent view that will hold header Label
	UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 300.0, 60.0)];
	
	// create the button object
	UILabel * footerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	footerLabel.backgroundColor = [UIColor clearColor];
	footerLabel.opaque = NO;
	footerLabel.textColor = [UIColor whiteColor];
	footerLabel.font = [UIFont systemFontOfSize:13];
	footerLabel.frame = CGRectMake(10.0, 0.0, 300.0, 60.0);
    footerLabel.numberOfLines = 10;
    
	// If you want to align the header text as centered
	// headerLabel.frame = CGRectMake(150.0, 0.0, 300.0, 44.0);
    
    if ((NSInteger)section == 1) {
        footerLabel.text = [NSString stringWithFormat:@"%s", "WARNING: All toggle changes will be saved automatically."]; // i.e. array element
        [customView addSubview:footerLabel];
    }
    
	return customView;
}

- (void)viewDidLoad {
    // Color Theme Background Setup
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
        CGFloat Red = 15.0/255.0;
        CGFloat Green = 30.0/255.0;
        CGFloat Blue = 70.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        VoiceGenderSegmentedState.tintColor = [UIColor colorWithRed:Red green:Green blue:0.6 alpha:1.0];
        ColorThemeSegmentedState.tintColor = [UIColor colorWithRed:Red green:Green blue:0.6 alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_blue.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        CGFloat Red = 10.0/255.0;
        CGFloat Green = 130.0/255.0;
        CGFloat Blue = 35.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        VoiceGenderSegmentedState.tintColor = [UIColor colorWithRed:Red green:0.6 blue:Blue alpha:1.0];
        ColorThemeSegmentedState.tintColor = [UIColor colorWithRed:Red green:0.6 blue:Blue alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_green.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    } else {
        CGFloat Red = 55.0/255.0;
        CGFloat Green = 15.0/255.0;
        CGFloat Blue = 120.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        VoiceGenderSegmentedState.tintColor = [UIColor colorWithRed:0.3 green:Green blue:0.5 alpha:1.0];
        ColorThemeSegmentedState.tintColor = [UIColor colorWithRed:0.3 green:Green blue:0.5 alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_purple.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    }
    
    //Retrieve the stored data to set button states
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    ButtonGraphicsSwitchState.on = [defaults boolForKey: @"ButtonGraphics"];
    ContactPrivacySwitchState.on = [defaults boolForKey: @"ContactPrivacy"];
    AddressPrivacySwitchState.on = [defaults boolForKey: @"AddressPrivacy"];
    VoiceGenderSegmentedState.selectedSegmentIndex = [defaults integerForKey:@"VoiceGender"];
    ColorThemeSegmentedState.selectedSegmentIndex = [defaults integerForKey:@"ColorTheme"];
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload {
    ButtonGraphicsSwitchState = nil;
    ContactPrivacySwitchState = nil;
    AddressPrivacySwitchState = nil;
    VoiceGenderSegmentedState = nil;
    ColorThemeSegmentedState = nil;
    NavigationBar = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (IBAction)ButtonGraphicsSwitch:(id)sender {
    //Saves the button state information (bool)
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    [defaults setBool: ButtonGraphicsSwitchState.on forKey: @"ButtonGraphics"];
    [defaults synchronize];
    NSLog(@"ButtonGraphicsSwitch Saved.");
}

- (IBAction)ContactPrivacySwitch:(id)sender {
    //Saves the button state information (bool)
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    [defaults setBool: ContactPrivacySwitchState.on forKey: @"ContactPrivacy"];
    [defaults synchronize];
    NSLog(@"ContactPrivacySwitch Saved.");
}

- (IBAction)AddressPrivacySwitch:(id)sender {
    //Saves the button state information (bool)
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    [defaults setBool: AddressPrivacySwitchState.on forKey: @"AddressPrivacy"];
    [defaults synchronize];
    NSLog(@"AddressPrivacySwitch Saved.");
}

- (IBAction)VoiceGenderSegmented:(id)sender {
    //Saves the button state information ("Male"=0, "Female"=1)
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:VoiceGenderSegmentedState.selectedSegmentIndex forKey:@"VoiceGender"];
    [defaults synchronize];
    NSLog(@"VoiceGender Saved");
}

- (IBAction)ColorThemeSegmented:(id)sender {
    //Saves the button state information ("0"=0, "2"=1, "2"=2) Note: Current state names are placeholders
    NSUserDefaults* defaults  = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:ColorThemeSegmentedState.selectedSegmentIndex forKey:@"ColorTheme"];
    [defaults synchronize];
    NSLog(@"ColorTheme Saved");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Color Theme Changed"
                                                    message:@"The color theme has been changed! Please note that the change won't be seen until the next screen."
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}
@end
