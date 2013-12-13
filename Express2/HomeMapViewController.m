//
//  HomeMapViewController.m
//  Express2
//
//  Created by Fedora Furtado on 11/2/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "HomeMapViewController.h"



@interface HomeMapViewController ()

@end


@implementation HomeMapViewController
@synthesize MapView;


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
    } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        CGFloat Red = 10.0/255.0;
        CGFloat Green = 130.0/255.0;
        CGFloat Blue = 35.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
    } else {
        CGFloat Red = 55.0/255.0;
        CGFloat Green = 15.0/255.0;
        CGFloat Blue = 120.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
    }

    
    //Retrieve saved address before view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *HomeAddress = [defaults objectForKey:@"HomeAddress"];
    NSString *HomeCity = [defaults objectForKey:@"HomeCity"];
    NSString *HomeProvince = [defaults objectForKey:@"HomeProvince"];
    NSString *HomeZip = [defaults objectForKey:@"HomeZip"];
    NSString *HomeCountry = [defaults objectForKey:@"HomeCountry"];
    NSString *HomeAddressFull = [NSString stringWithFormat:@"%@\n%@, %@\n%@, %@", HomeAddress, HomeCity, HomeProvince, HomeZip, HomeCountry];
    
    //Address Alert
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Home Location"
                                                    message:HomeAddressFull
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];


    //Map Route Code
    MapView* mapView = [[MapView alloc] initWithFrame:
                        CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
	//Shows user location
    [self.MapView setShowsUserLocation:YES];
    //set which mapview to show
	[self.MapView addSubview:mapView];
    
	Place* start = [[Place alloc] init];
	start.name = @"Start Location";
	start.description = @"You started here.";
    start.latitude = [defaults doubleForKey:@"starLatitude"];
    start.longitude = [defaults doubleForKey:@"starLongitude"];
	
    //Geocoder Code
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:HomeAddressFull completionHandler:^(NSArray *placemarks, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", [error localizedDescription]);
            return;
        }
        
        for (id object in placemarks) {
            CLPlacemark *placemark = object;
            
            Place* destination = [[Place alloc] init];
            destination.name = @"Home";
            destination.description = [NSString stringWithFormat:@"%@, %@, %@", HomeAddress, HomeCity, HomeProvince];
            destination.latitude = placemark.location.coordinate.latitude;
            destination.longitude = placemark.location.coordinate.longitude;
            
            [mapView showRouteFrom:start to:destination];
        }
    }];
    

    [super viewDidLoad];
    
}


- (void)viewDidUnload {
    [self setMapView:nil];
    NavigationBar = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)viewHomeAddress:(id)sender {
    //Retrieve saved address before view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *HomeAddress = [defaults objectForKey:@"HomeAddress"];
    NSString *HomeCity = [defaults objectForKey:@"HomeCity"];
    NSString *HomeProvince = [defaults objectForKey:@"HomeProvince"];
    NSString *HomeZip = [defaults objectForKey:@"HomeZip"];
    NSString *HomeCountry = [defaults objectForKey:@"HomeCountry"];
    NSString *HomeAddressFull = [NSString stringWithFormat:@"%@\n%@, %@\n%@, %@", HomeAddress, HomeCity, HomeProvince, HomeZip, HomeCountry];
    
    //Address Alert
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Home Location"
                                                    message:HomeAddressFull
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}
@end
