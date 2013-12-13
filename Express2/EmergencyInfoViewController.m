//
//  EmergencyInfoViewController.m
//  Express2
//
//  Created by Gary Yau on 10/31/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "EmergencyInfoViewController.h"
#import "Reachability.h"

@interface EmergencyInfoViewController ()

@end

@implementation EmergencyInfoViewController
@synthesize HomeAddressTableViewCell;
@synthesize SchoolAddressTableViewCell;
@synthesize locationManager;

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
        headerLabel.text = [NSString stringWithFormat:@"%s", "Emergency Contact #1"]; // i.e. array element
        [customView addSubview:headerLabel];
    } else if ((NSInteger)section == 2) {
        headerLabel.text = [NSString stringWithFormat:@"%s", "Emergency Contact #2"]; // i.e. array element
        [customView addSubview:headerLabel];
    }
    
	return customView;
}

- (void)viewDidLoad {
    
    //Address Buttons Left Justified
    homeAddressButton.titleLabel.textAlignment = UITextAlignmentLeft;
    schoolAddressButton.titleLabel.textAlignment = UITextAlignmentLeft;
    homeAddressButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    schoolAddressButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    
    // Color Theme Background Setup
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
        CGFloat Red = 15.0/255.0;
        CGFloat Green = 30.0/255.0;
        CGFloat Blue = 70.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec1Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec1Allergies.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Phone.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Rel.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Phone.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Rel.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_blue.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        CGFloat Red = 10.0/255.0;
        CGFloat Green = 130.0/255.0;
        CGFloat Blue = 35.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec1Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec1Allergies.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Phone.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Rel.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Phone.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Rel.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_green.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    } else {
        CGFloat Red = 55.0/255.0;
        CGFloat Green = 15.0/255.0;
        CGFloat Blue = 120.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec1Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec1Allergies.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Phone.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec2Rel.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Name.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Phone.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        Sec3Rel.textColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_purple.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    }
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // Contact Privacy Settings
    if ([defaults boolForKey:@"ContactPrivacy"] == false) {
        // Retrieve information before view loads
        NSString *UserFirstName = [defaults objectForKey:@"NameFirstName"];
        NSString *UserLastName = [defaults objectForKey:@"NameLastName"];
        NSString *UserFullName = [NSString stringWithFormat:@"%@ %@", UserFirstName, UserLastName];
        NSString *UserAllergies = [defaults objectForKey:@"AllergiesList"];
        
        NSString *Emer1FirstName = [defaults objectForKey:@"Emer1FirstName"];
        NSString *Emer1LastName = [defaults objectForKey:@"Emer1LastName"];
        NSString *Emer1FullName = [NSString stringWithFormat:@"%@ %@", Emer1FirstName, Emer1LastName];
        NSString *Emer1Phone = [defaults objectForKey:@"Emer1Phone"];
        NSString *Emer1Rel = [defaults objectForKey:@"Emer1Rel"];
        
        NSString *Emer2FirstName = [defaults objectForKey:@"Emer2FirstName"];
        NSString *Emer2LastName = [defaults objectForKey:@"Emer2LastName"];
        NSString *Emer2FullName = [NSString stringWithFormat:@"%@ %@", Emer2FirstName, Emer2LastName];
        NSString *Emer2Phone = [defaults objectForKey:@"Emer2Phone"];
        NSString *Emer2Rel = [defaults objectForKey:@"Emer2Rel"];
        
        // Update the UI element with the saved data
        UserNameLabel.text = UserFullName;
        UserAllergiesLabel.text = UserAllergies;
        Emer1NameLabel.text = Emer1FullName;
        Emer1PhoneLabel.text = Emer1Phone;
        Emer1RelLabel.text = Emer1Rel;
        Emer2NameLabel.text = Emer2FullName;
        Emer2PhoneLabel.text = Emer2Phone;
        Emer2RelLabel.text = Emer2Rel;
    } else {
        // Retrieve information before view loads
        NSString *UserAllergies = [defaults objectForKey:@"AllergiesList"];
        
        UserNameLabel.text = @"Private";
        UserAllergiesLabel.text = UserAllergies;
        Emer1NameLabel.text = @"Private";
        Emer1PhoneLabel.text = @"Private";
        Emer1RelLabel.text = @"Private";
        Emer2NameLabel.text = @"Private";
        Emer2PhoneLabel.text = @"Private";
        Emer2RelLabel.text = @"Private";
    }
    
    
    // Hide Home/School Address buttons if Privacy Option Enabled
    if ([defaults boolForKey:@"AddressPrivacy"] == false) {
        HomeAddressTableViewCell.hidden = false;
        SchoolAddressTableViewCell.hidden = false;
    } else {
        HomeAddressTableViewCell.hidden = true;
        SchoolAddressTableViewCell.hidden = true;
    }
    /*To grab users current location in this view controller to be able to pass the coordinates of their current
     location for the directions method in the HomeMapViewController. If its the first time the user is using this
     feature - the prompt asking the user if they would like to share their location will now be shown once this view
     controller loads.
    */
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setDouble:newLocation.coordinate.latitude forKey:@"starLatitude"];
    [defaults setDouble:newLocation.coordinate.longitude forKey:@"starLongitude"];
    [defaults synchronize];
    [locationManager stopUpdatingLocation];
    NSLog(@"%f",newLocation.coordinate.latitude);
    NSLog(@"%f",newLocation.coordinate.longitude);
    
}

- (void)viewDidUnload {
    UserNameLabel = nil;
    UserAllergiesLabel = nil;
    Emer1NameLabel = nil;
    Emer1PhoneLabel = nil;
    Emer1RelLabel = nil;
    Emer2NameLabel = nil;
    Emer2PhoneLabel = nil;
    Emer2RelLabel = nil;
    [self setHomeAddressTableViewCell:nil];
    [self setSchoolAddressTableViewCell:nil];
    NavigationBar = nil;
    Sec1Name = nil;
    Sec1Allergies = nil;
    Sec2Name = nil;
    Sec2Phone = nil;
    Sec2Rel = nil;
    Sec3Name = nil;
    Sec3Phone = nil;
    Sec3Rel = nil;
    homeAddressButton = nil;
    schoolAddressButton = nil;
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

- (IBAction)viewHomeAddress:(id)sender {
    NSLog(@"Button Press");
    Reachability * reach = [Reachability reachabilityWithHostname:@"www.google.com"];
    
    if (reach.isReachable) {
        [self performSegueWithIdentifier:@"toHomeLocation" sender:self];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSString *HomeAddress = [defaults objectForKey:@"HomeAddress"];
        NSString *HomeCity = [defaults objectForKey:@"HomeCity"];
        NSString *HomeProvince = [defaults objectForKey:@"HomeProvince"];
        NSString *HomeZip = [defaults objectForKey:@"HomeZip"];
        NSString *HomeCountry = [defaults objectForKey:@"HomeCountry"];
        NSString *HomeAddressFull = [NSString stringWithFormat:@"%@\n%@, %@\n%@, %@", HomeAddress, HomeCity, HomeProvince, HomeZip, HomeCountry];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Home Location"
                                                        message:HomeAddressFull
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (IBAction)viewSchoolAddress:(id)sender
{
    Reachability * reach = [Reachability reachabilityWithHostname:@"www.google.com"];
    
    if (reach.isReachable) {
        [self performSegueWithIdentifier:@"toSchoolLocation" sender:self];
    } else {
        //Retrieve saved address before view loads
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSUserDefaults *SchoolName = [defaults objectForKey:@"SchoolName"];
        NSString *SchoolAddress = [defaults objectForKey:@"SchoolAddress"];
        NSString *SchoolCity = [defaults objectForKey:@"SchoolCity"];
        NSString *SchoolProvince = [defaults objectForKey:@"SchoolProvince"];
        NSString *SchoolZip = [defaults objectForKey:@"SchoolZip"];
        NSString *SchoolCountry = [defaults objectForKey:@"SchoolCountry"];
        NSString *SchoolAddressFull = [NSString stringWithFormat:@"%@\n%@\n%@, %@\n%@, %@",SchoolName, SchoolAddress, SchoolCity, SchoolProvince, SchoolZip, SchoolCountry];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"School Location"
                                                        message:SchoolAddressFull
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

@end
